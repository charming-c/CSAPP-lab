#include "csapp.h"

typedef struct cache_t {
    void *cache;          
    int size;             
    struct cache_t *next;         
    char *method;
    char *uri;     
} cache_t;

void cache_init(cache_t *cache);
void cache_reader(cache_t *cache_buf, char *method, char *uri, cache_t **p);
void cache_writer(cache_t *cache_buf, void *buf, size_t size, char *method, char *uri);
