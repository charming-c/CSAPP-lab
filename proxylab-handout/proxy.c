#include <stdio.h>
#include "csapp.h"
#include "sbuf.h"
#include "cache.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

#define NTHREADS 4
#define SBUFSIZE 16

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connection_hdr = "Connection: close\r\n";
static const char *proxy_connect_hdr = "Proxy-Connection: close\r\n";

void doit(int fd);
void read_request(rio_t *rp, char *request_buf);
int parse_host(char *uri, char *host_hdr, char *host, char *port);
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg);
void write_request(int fd, char *buf);
void proxy(int fd, char *host, char *port, char *buf, char *method, char *uri);
void *proxy_thread(void *vargp);

sbuf_t sbuf;
cache_t cache;
int main(int argc, char **argv)
{
    int listenfd, connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    sbuf_init(&sbuf, SBUFSIZE);
    cache_init(&cache);

    int i;
    pthread_t tid;
    for(i = 0; i<NTHREADS; i++) {
        Pthread_create(&tid, NULL, proxy_thread, NULL);
    }

    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, NI_NUMERICHOST | NI_NUMERICSERV);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        // 开始发送请求
        sbuf_insert(&sbuf, connfd);
    }
    return 0;
}

void doit(int fd)
{
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], c_uri[MAXLINE], version[MAXLINE], host_hdr[MAXLINE];
    rio_t rio;
    char request_buf[MAXLINE];
    int output_file;
    char host[MAXLINE], port[MAXLINE];

    output_file = Open("./output.txt", O_WRONLY | O_CREAT | O_APPEND, 0);
    // 将已连接描述符与一个 Rio 缓冲区绑定
    Rio_readinitb(&rio, fd);
    // 将第一行数据读取到缓冲区 request_buf 中
    if (!Rio_readlineb(&rio, request_buf, MAXLINE))
        return;
    // 根据格式将 method uri 和 version 从 request_buf 中读取
    sscanf(request_buf, "%s %s %s", method, uri, version);
    strcpy(c_uri, uri);
    // 将剩下的数据读取到 buf 中
    read_request(&rio, buf);
    strcat(buf, "\r\n");

    
    if (strcasecmp(method, "GET"))
    {
        clienterror(fd, method, "501", "Not Implemented",
                    "Tiny does not implement this method");
        write_request(output_file, request_buf);
        write_request(output_file, buf);
        return;
    }

    strcpy(host_hdr, "Host: ");
    strcpy(port, "80");
    if(!parse_host(uri, host_hdr, host, port)) {
        clienterror(fd, uri, "404", "Not found",
                    "Couldn't find this file, uri begin with http://");
        write_request(output_file, request_buf);
        write_request(output_file, buf);
        return;
    }

    sprintf(request_buf, "%s %s %s\r\n", method, uri, version);
    strcat(request_buf, host_hdr);
    strcat(request_buf, user_agent_hdr);
    strcat(request_buf, connection_hdr);
    strcat(request_buf, proxy_connect_hdr);
    strcat(request_buf, buf);
    
    write_request(output_file, request_buf);
    if(!strcmp(host, "localhost")) {
        strcpy(host, "127.0.0.1");
    }
    cache_t *p = &cache;
    
    cache_reader(&cache, method, c_uri, &p);
    printf("%p\n", p);
    fflush(stdout);
    
        
    if(p == (&cache))
        proxy(fd, host, port, request_buf, method, c_uri);
    else {
        size_t total = 0;
        while((p->size) - total > MAXLINE) {
             Rio_writen(fd, (p->cache) + total, p->size);
             total += MAXLINE;
        }
        Rio_writen(fd, (p->cache) + total, (p->size) - total);
        // Rio_writen(fd, p->cache, strlen(p->cache));
    }

}

void read_request(rio_t *rp, char *request_buf)
{
    char buf[MAXLINE];
    Rio_readlineb(rp, buf, MAXLINE);
    while (strcmp(buf, "\r\n"))
    { 
        strcat(request_buf, buf);
        Rio_readlineb(rp, buf, MAXLINE);
    }
    return;
}

void write_request(int fd, char *buf)
{
    Rio_writen(fd, buf, strlen(buf));
}

void clienterror(int fd, char *cause, char *errnum,
                 char *shortmsg, char *longmsg)
{
    char buf[MAXLINE];

    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n\r\n");
    Rio_writen(fd, buf, strlen(buf));

    sprintf(buf, "<html><title>Proxy Error</title>");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<body bgcolor="
                 "ffffff"
                 ">\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "%s: %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<p>%s: %s\r\n", longmsg, cause);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "<hr><em>The Web proxy</em>\r\n");
    Rio_writen(fd, buf, strlen(buf));
}

int parse_host(char *uri, char *host_hdr, char *host, char *port) {
    char buf[MAXLINE];
    strcpy(buf, uri);
    char *ptr;
    char *bufuri;
    int idx;
    char *hp;

    if (strstr(buf, "http://"))
    { 
        ptr = buf + 7;
        bufuri = strchr(ptr, '/');
        idx = bufuri - buf;
        buf[idx] = '\0';
        strcpy(uri, uri + idx);

        if((hp = strstr(ptr, ":"))) {
            *hp = '\0';
            strcpy(port, hp + 1);
        }
        strcpy(host, ptr);
        strcat(host_hdr, ptr);
        strcat(host_hdr, "\r\n");
        return 1;
    }
    else
    { 
        return 0;
    }
}

void proxy(int fd, char *host, char *port, char *buf, char *method, char *uri) {
    int clientfd;
    rio_t rio;
    char data_cache[MAX_OBJECT_SIZE];
    char *cursor = data_cache;
    size_t data_size = 0;

    clientfd = Open_clientfd(host, port);
    
    Rio_readinitb(&rio, clientfd);
    Rio_writen(rio.rio_fd, buf, strlen(buf));
    size_t n;
    while((n = Rio_readlineb(&rio, buf, MAXLINE)) != 0) {
        cursor = data_cache + data_size;
        data_size += n;
        if(data_size < MAX_OBJECT_SIZE) {
            strcat(cursor, buf);
        }
        printf("%ld\n", n);

        Rio_writen(fd, buf, n);
    }
    printf("%ld", data_size);
    if(data_size < MAX_OBJECT_SIZE) {
        // printf("\n%s", data_cache);
        printf("\n%ld", strlen(data_cache));
        fflush(stdout);
        cache_writer(&cache, data_cache, data_size, method, uri);
    }

    Close(clientfd); 

}

void *proxy_thread(void *vargp) {
    Pthread_detach(pthread_self());
    while(1) {
        int connfd = sbuf_remove(&sbuf);
        doit(connfd);
        Close(connfd);
    }
}