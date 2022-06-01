# cache lab 笔记解析
## part A 编写一个缓存模拟器
通过文件输入的内存信息计算缓存的不命中、命中、以及迁徙的数量，主要就是通过计算给定的地址的 tag 位、组数去给定的缓存里寻找匹配，最后计算出结果
```
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