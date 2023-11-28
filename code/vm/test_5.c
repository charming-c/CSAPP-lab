#include<stdio.h>
#include<unistd.h>
#include<sys/mman.h>
#include<stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char** argv) {
    char* filename;
    int fd;
    void* bufp;

    if(argc < 2) {
        printf("arg miss, abort...\n");
        exit(0);
    }

    filename = argv[1];
    printf("filename: %s\n", filename);
    fd = open(filename, O_RDONLY, 0);
    int offset = 0;
    while((bufp = mmap(NULL, 100, PROT_READ, MAP_PRIVATE, fd, offset)) != MAP_FAILED) {
        offset += 100;
        printf("%s", (char*)bufp);
    }
}