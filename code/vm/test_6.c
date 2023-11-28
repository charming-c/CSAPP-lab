#include<stdio.h>
#include<unistd.h>
#include<sys/mman.h>
#include<stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int main() {
    void *p = sbrk(0);
    void *q = sbrk(1);
    void *m = sbrk(-1);
    void *n = sbrk(0);
    printf("p:%p\n",p);
    printf("q:%p\n", q);
    printf("m:%p\n", m);
    printf("n:%p\n", n);
}