# cache lab 笔记解析
## part A 编写一个缓存模拟器
通过文件输入的内存信息计算缓存的不命中、命中、以及迁徙的数量，主要就是通过计算给定的地址的 tag 位、组数去给定的缓存里寻找匹配，最后计算出结果
```c
#include "cachelab.h"
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int hits = 0, misses = 0, eviction = 0;

typedef struct cache_line
{
    int valid;
    int tag;
    int time_stamp;
} cache_line;

// 十六进制字符串转十进制整数
int hex2dec(unsigned sourse);

// 初始化所有高速缓存
void init_cache(cache_line *cache, int s, int e);

// 按地址从cache中加载
int load(cache_line* cache_line, unsigned address, int num);

char *help_msg = "Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t "
                 "<file>\nOptions:\n  -h Print this help message.\n  -v "
                 "Optional verbose flag.\n  -s <num> Number of set index "
                 "bits.\n  -E <num> Number of lines per set.\n  -b <num> "
                 "Number of block offset bits.\n  -t <file> Trace file.\n\n"
                 "Examples :\n linux> ./csim -s 4 -E 1 -b 4 -t "
                 "traces/yi.trace\n linux>  ./csim -v -s 8 -E 2 "
                 "-b 4 -t traces/yi.trace\n ";

// s-组数 e-每组行数 b-每行块数
int s = 0, e = 0, b = 0;
int s_bit = 0; 
// 输入文件路径
char *f;
// 是否输出详细信息
int v_flag = 0;

int main(int argc, char *argv[])
{
    int ch;

    // 读取输入的参数
    while ((ch = getopt(argc, argv, "hvs:E:b:t:")) != -1)
    {
        switch (ch)
        {
        case 'h':
            printf("%s", help_msg);
            return 0;
            break;
        case 'v':
            v_flag = 1;
            break;
        case 's':
            s = atoi(optarg);
            s_bit = s;
            s = 1 << s;
            break;
        case 'E':
            e = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            f = optarg;
            break;
        }
    }
    cache_line *cache;
    cache = (cache_line *)malloc(sizeof(cache_line) * s * e);
    init_cache(cache, s, e);

    FILE *pFile;
    pFile = fopen(f, "r");

    // 指令
    char ins;
    // 地址
    unsigned address;
    // 大小
    int size;
    int num = 0;

    while (fscanf(pFile, " %c %x,%d", &ins, &address, &size) > 0)
    {
        ++num;
        if(ins == 'I') continue;
        int result_code = 0;
        // 按地址去 cache 寻址
        // 根据返回值判断: 1-冷未命中 2-未命中+迁徙 3-命中
        result_code = load(cache, address, num);
        switch (result_code)
        {
        case 1:
            misses++;
            break;
        case 2:
            misses++;
            eviction++;
            break;
        case 3:
            hits++;
        }
        if (ins == 'M')
            hits++;
        if (v_flag == 1)
        {
            printf(" %c %x,%d ", ins, address, size);
            if (result_code == 1)
            {
                printf("miss ");
            }
            else if (result_code == 2)
            {
                printf("miss eviction ");
            }
            else
                printf("hit ");
            if (ins == 'M')
                printf("hit");
            printf("\n");
        }
    }

    fclose(pFile);
    free(cache);
    // printf("%d %d %d", hits, misses, eviction);
    printSummary(hits, misses, eviction);
    return 0;
}

// 最后发现没有必要
int hex2dec(unsigned source)
{
    int ans = 0;
    int p = 1;
    while (source != 0)
    {
        ans += p * (source % 10);
        source /= 10;
        p *= 16;
    }
    return ans;
}

void init_cache(cache_line *cache, int s, int e)
{
    for (int i = 0; i < s; i++)
    {
        for (int j = 0; j < e; j++)
        {
            cache[i * e + j].valid = 0;
            cache[i * e + j].tag = 0;
            cache[i * e + j].time_stamp = -1;
        }
    }
}

int load(cache_line* cache, unsigned address, int num) {
    unsigned int format_add = address;

    // tag 标志
    int tg = format_add / (1 << (s_bit + b));
    format_add %= (1 << (s_bit + b));
    // group 组数
    int gp = format_add / (1 << b);
    int i = gp * e;
    for(int j = 0; j<e; j++) {
        if(cache[i + j].valid == 1 && cache[i + j].tag == tg) {
            cache[i + j].time_stamp = num;
            return 3;
        }
    }

    for(int j = 0; j<e; j++) {
        if(cache[i + j].valid == 0) {
            cache[i + j].valid = 1;
            cache[i + j].tag = tg;
            cache[i + j].time_stamp = num;
            return 1;
        }
    }

    int tmp = i;
    for(int j = 0; j<e; j++) {
        if(cache[tmp].time_stamp > cache[i + j].time_stamp) {
            tmp = i + j;
        }
    }

    cache[tmp].tag = tg;
    cache[tmp].time_stamp = num;
    return 2;
}
```

## part B 编写缓存友好的矩阵转置函数
先看条件和要求：
- For each matrix size, the performance of your transpose_submit function is evaluated by using
valgrind to extract the address trace for your function, and then using the reference simulator to replay
this trace on a cache with parameters (s = 5, E = 1, b = 5).
- 32 × 32: 8 points if m < 300, 0 points if m > 600
- 64 × 64: 8 points if m < 1, 300, 0 points if m > 2, 000
- 61 × 67: 10 points if m < 2, 000, 0 points if m > 3, 000

提供的缓冲区 2^5 组，每组存放 2^5 个字节，每组一行，直接相联映射
### 32 * 32 矩阵
由于一个块 32 个字节，可以存放 8 个 int，而且对于 32 * 32 的矩阵，刚好第 8 行 才会覆盖第 0 行的内存(计算出的组数是相同的)，所以就使用 8 * 8 的块 进行分解
```c
 for (i = 0; i < N; i += 8)
        {
            for (j = 0; j < M; j += 8)
            {
                for (a = i; a < i + 8; a++)
                {
                    b = j;

                    a0 = A[a][b];
                    a1 = A[a][b + 1];
                    a2 = A[a][b + 2];
                    a3 = A[a][b + 3];
                    a4 = A[a][b + 4];
                    a5 = A[a][b + 5];
                    a6 = A[a][b + 6];
                    a7 = A[a][b + 7];

                    B[b][a] = a0;
                    B[b + 1][a] = a1;
                    B[b + 2][a] = a2;
                    B[b + 3][a] = a3;
                    B[b + 4][a] = a4;
                    B[b + 5][a] = a5;
                    B[b + 6][a] = a6;
                    B[b + 7][a] = a7;
                }
            }
        }
```

### 61 * 67 矩阵
这个矩阵是不规则的，随便分一下块试一下，发现 16 * 16 就可以拿满分
```c
for (i = 0; i < N; i += 16)
        {
            for (j = 0; j < M; j += 16)
            {
                for (a = i; a < i + 16 && a < N; a++)
                {
                    for (b = j; b < j + 16 && b < M; b++)
                    {
                        B[b][a] = A[a][b];
                    }
                }
            }
        }
```
> 这里说明一下 32 * 32 为什么用了临时变量现存放了 A 中的值，因为 我们访问 B 的时候其实会覆盖掉 缓存中 A 的值，所以一次读 8 个，然后再将 B 加载进内存，这里发现由于 miss 的限制太宽容了，这么写也可以过，因为不规则，其实又很多的 miss， 我有点没有 get 到为什么要设置这样的一个 测试

### 64 * 64 矩阵
能力有限，想不出来怎么写，参考了别人的代码
- [讲解链接](https://zhuanlan.zhihu.com/p/387662272)