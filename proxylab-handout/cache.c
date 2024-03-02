#include "csapp.h"
#include "cache.h"

int readcnt = 0;
sem_t mutex, w;

void cache_init(cache_t *cache_buf) {
    cache_buf->cache = Calloc(1, sizeof(char));
    cache_buf->size = 0;
    cache_buf->next = NULL;
    cache_buf->method = NULL;
    cache_buf->uri = NULL;

    Sem_init(&mutex, 0, 1);
    Sem_init(&w, 0, 1);  
}

void cache_reader(cache_t *cache_buf, char *method, char *uri, cache_t **p) {
        P(&mutex);
        readcnt++;
        if(readcnt == 1)
            P(&w);
        V(&mutex);

        cache_t *cursor = cache_buf->next;
        while(cursor != NULL) {
            printf("size:%d method:%s uri:%s\n", cursor->size, cursor->method, cursor->uri);
            if(cursor->size != 0 && (strcmp(cursor->method, method) == 0) && (strcmp(cursor->uri, uri) == 0)) {
                printf("get");
                break;
            }
            else {
                cursor = cursor->next;
            }
        }
        fflush(stdout);

        if (cursor != NULL) *p = cursor;
        else *p = cache_buf;

        P(&mutex);
        readcnt--;
        if(readcnt == 0)
            V(&w);
        V(&mutex);
}

void cache_writer(cache_t *cache_buf, void *buf, size_t size, char *method, char *uri) {
        P(&w);
        cache_t *new_buf = (cache_t *)Malloc(sizeof(cache_t));
        void *c_buf = Malloc(size * sizeof(char));
        strcpy(c_buf, buf);
        new_buf->cache = c_buf;
        new_buf->size = size;
        char *c_uri = (char *)Malloc(sizeof(char *) * strlen(uri));
        strcpy(c_uri, uri);
        new_buf->uri = c_uri;
        char *c_method = (char *)Malloc(sizeof(char *) * strlen(method));
        strcpy(c_method, method);
        new_buf->method = c_method;
        cache_t *tmp = cache_buf->next;
        cache_buf->next = new_buf;
        new_buf->next = tmp;
        
        V(&w);
}
