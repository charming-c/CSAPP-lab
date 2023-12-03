/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "charming-c",
    /* First member's full name */
    "Jiaming Cai",
    /* First member's email address */
    "jiam.cai@outlook.com",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
// 对齐要求（单位：byte）
#define ALIGNMENT 8
#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE (1<<12)

/* rounds up to the nearest multiple of ALIGNMENT */
// 8 字节对齐后的大小（单位：字节）
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)   

// 内存块 头部/脚部 大小
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))     

 // 比较大小
#define MAX(x, y) ((x > y)? (x) : (y))         
 // 将 size 和 alloc（分配位）打包，放入 头部/脚部
#define PACK(size, alloc_bit) ((size) | (alloc_bit))   

// 读 头部/脚部 的值
#define GET(p) (*(unsigned int *)(p)) 
// 写 头部/脚部 的值        
#define PUT(p, val) (*(unsigned int *)(p) = val) 

// 读 头部/脚部 的内存大小、分配位信息
#define GET_SIZE(p) (GET(p) & ~0x7)    
#define GET_ALLOC(p) (GET(p) & 0x1)     

// 根据给到的 payload 指针，计算头部/脚部位置
#define HDRP(bp) ((char *)(bp) - WSIZE) 
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

// 上一个/下一个内存块的 payload 指针
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp))) 
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE((char *)(bp) - (DSIZE))) 

// 获取空闲链表节点的上一个节点
#define NEXT_FREE_BLK(bp) ((char *)(bp) + WSIZE)
#define PREV_FREE_BLK(bp) ((char *)(bp) + 0)
#define PUT_ADDR(bp, val) (*((void **)(bp)) = val)
#define GET_ADDR(bp) (*((void **)(bp)))

static void *heap_listp = 0;
static void *free_listp = 0;
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void printblock(void *bp); 
static void checkheap(int verbose);
static void checkblock(void *bp);
static void checklist();
static void delete_node(void *bp);
static void insert(void *bp);



/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    int init_size = WSIZE * 4;
    if((heap_listp = mem_sbrk(init_size)) == (void *)-1) {
        return -1;
    }
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2 * WSIZE);   

    if((void *)extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;
    return 0;
}

static void *extend_heap(size_t words) {
    char *bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if((long)(bp = mem_sbrk(size)) == -1)
        return NULL;
    
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));       /* 处理尾块 */

    return coalesce((void *)bp);
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize;
    size_t extendsize;
    char *bp;

    if(size == 0) 
        return NULL;

    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else 
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);

    if((bp = find_fit(asize)) != NULL) {
        // checkheap(1);
        place(bp, asize);
        return bp;
    }

    extendsize = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extendsize/WSIZE)) == NULL)
        return NULL;
    // checkheap(1);
    place(bp, asize);
    // checkheap(1);
    return bp;
}

static void *find_fit(size_t size) {
    // void *p = heap_listp;
    // while(GET_SIZE(HDRP(p)) != 0) {
    //     if(GET_ALLOC(HDRP(p)) == 1) {
    //         p = NEXT_BLKP(p);
    //     }
    //     else {
    //         if(GET_SIZE(HDRP(p)) >= size) {
    //             return (char *)p;
    //         }
    //         else {
    //             p = NEXT_BLKP(p);
    //         }
    //     }
    // }
    // return NULL;
    void *p = free_listp;
    if(p == 0) return NULL;
    while(p != heap_listp) {
        // checklist();
        if(GET_SIZE(HDRP(p)) < size)
            p = GET_ADDR(NEXT_FREE_BLK(p));
        else return p;
    }
    return NULL;
}

static void place(void* bp, size_t size) {
    size_t old_size = GET_SIZE(HDRP(bp));
    size_t extra = old_size - size;
    delete_node(bp);

    if(extra >= (2 * DSIZE)) {
        PUT(HDRP(bp), PACK(size, 1));
        PUT(FTRP(bp), PACK(size, 1));
        PUT(HDRP(NEXT_BLKP(bp)), PACK(extra, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(extra, 0));
        insert(NEXT_BLKP(bp));
    }
    else {
        PUT(HDRP(bp), PACK(old_size, 1));
        PUT(FTRP(bp), PACK(old_size, 1));
    }

}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    size_t size = GET_SIZE(HDRP(ptr));

    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));

    coalesce(ptr);
}

static void *coalesce(void *bp) {
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    if(prev_alloc && next_alloc) {
        insert(bp);
        return bp;
    }
    else if(prev_alloc && (!next_alloc)) {
        delete_node(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        insert(bp);
    }
    else if((!prev_alloc) && next_alloc) {
        delete_node(PREV_BLKP(bp));
        size += GET_SIZE(FTRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));

        bp = PREV_BLKP(bp);
        insert(bp);
    }
    else {
        delete_node(NEXT_BLKP(bp));
        delete_node(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));

        bp = PREV_BLKP(bp);
        insert(bp);
    }
    return bp;
}

static void printblock(void *bp) 
{
    size_t hsize, halloc, fsize, falloc;

    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));  
    fsize = GET_SIZE(FTRP(bp));
    falloc = GET_ALLOC(FTRP(bp));  

    if (hsize == 0) {
        printf("%p: EOL\n", bp);
        return;
    }

    printf("%p: header: [%zu:%c] footer: [%zu:%c]\n", bp, 
           hsize, (halloc ? 'a' : 'f'), 
           fsize, (falloc ? 'a' : 'f')); 
}

static void checkblock(void *bp) 
{
    if ((size_t)bp % 8)
        printf("Error: %p is not doubleword aligned\n", bp);
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
        printf("Error: header does not match footer\n");
}

/* 
 * checkheap - Minimal check of the heap for consistency 
 */
void checkheap(int verbose) 
{
    char *bp = heap_listp;

    if (verbose)
        printf("Heap (%p):\n", heap_listp);

    if ((GET_SIZE(HDRP(heap_listp)) != 2 * WSIZE) || !GET_ALLOC(HDRP(heap_listp)))
        printf("Bad prologue header\n");
    checkblock(heap_listp);

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose) 
            printblock(bp);
        checkblock(bp);
    }

    if (verbose)
        printblock(bp);
    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp))))
        printf("Bad epilogue header\n");
}



/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    // void *oldptr = ptr;
    // void *newptr;
    // size_t copySize;
    
    // newptr = mm_malloc(size);
    // if (newptr == NULL)
    //   return NULL;
    // copySize = *(size_t *)((char *)oldptr - SIZE_T_SIZE);
    // if (size < copySize)
    //   copySize = size;
    // memcpy(newptr, oldptr, copySize);
    // mm_free(oldptr);
    // return newptr;
    if(ptr == NULL) 
        return mm_malloc(size);
    if(size == 0) {
        mm_free(ptr);
        return ptr;
    }

    void *oldptr = ptr;
    void *newptr;
    size_t copySize;

    newptr = mm_malloc(size);
    copySize = *(unsigned int *)((char *)oldptr - WSIZE);
    if(size < copySize)
        copySize = size;
    memcpy(newptr, oldptr, copySize);
    mm_free(oldptr);
    return newptr;
}

static void checklist() {
    void *p = free_listp;
    int i = 0;
    puts("linkedlist:");
    if(p == 0) return;
    void *q = GET_ADDR(NEXT_FREE_BLK(p));
    printf("%p\n", q);
    while(GET_ADDR(NEXT_FREE_BLK(p)) != heap_listp) {
        printf("node%d: %p\nprev_node: %p\nnext_node: %p\n", i++, p, GET_ADDR(PREV_FREE_BLK(p)), GET_ADDR(NEXT_FREE_BLK(p)));
        p = GET_ADDR(NEXT_FREE_BLK(p));
    }
    printf("node%d: %p\nprev_node: %p\nnext_node: %p\n", i, p, GET_ADDR(PREV_FREE_BLK(p)), GET_ADDR(NEXT_FREE_BLK(p)));
}

/**
 * 删除空闲块
 */
static void delete_node(void *bp) {
    // checkheap(1);
    char *prev = GET_ADDR(PREV_FREE_BLK(bp));
    char *next = GET_ADDR(NEXT_FREE_BLK(bp));
    /* 四种情况 */
    /* 1. 既是头节点又是尾节点 */
    /* 2. 只是头节点 */
    /* 3. 只是尾节点 */
    /* 4. 既不是头，也不是尾节点 */
    if(prev == heap_listp && next == heap_listp) {
        free_listp = 0;
    }
    else if(prev == heap_listp && next != heap_listp) {
        PUT_ADDR(PREV_FREE_BLK(next), heap_listp);
        free_listp = next;
    }
    else if(prev != heap_listp && next == heap_listp) {
        PUT_ADDR(NEXT_FREE_BLK(prev), heap_listp);
    }
    else {
        PUT_ADDR(PREV_FREE_BLK(next), prev);
        PUT_ADDR(NEXT_FREE_BLK(prev), next);

    }
    PUT_ADDR(PREV_FREE_BLK(bp), 0);
    PUT_ADDR(NEXT_BLKP(bp), 0);
    // checklist();
}


/**
 * 头插法向当前空闲链表插入空闲块
 */
static void insert(void *bp) {
    // checkheap(1);
    /* 链表不为空时 */
    if(free_listp != 0) {
        PUT_ADDR(PREV_FREE_BLK(free_listp), bp);
        PUT_ADDR(PREV_FREE_BLK(bp), heap_listp);
        PUT_ADDR(NEXT_FREE_BLK(bp), free_listp);
        free_listp = bp;
    }
    /* 为空 */
    else {
        PUT_ADDR(PREV_FREE_BLK(bp), heap_listp);
        PUT_ADDR(NEXT_FREE_BLK(bp), heap_listp);
        free_listp = bp;
    }
    if(GET_ADDR(PREV_FREE_BLK(bp)) == bp)
        PUT_ADDR(PREV_FREE_BLK(bp), heap_listp);
    if(GET_ADDR(NEXT_FREE_BLK(bp)) == bp)
        PUT_ADDR(NEXT_FREE_BLK(bp), heap_listp);
    // checklist();
}












