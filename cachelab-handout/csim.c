#include "cachelab.h"
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int hits = 0, misses = 0, eviction = 0;

typedef struct cache_line {
    int valid;
    int tag;
    int time_stamp;
}cache_line;

// 十六进制字符串转十进制整数
int hex2dec(char* sourse);

// 初始化所有高速缓存
void init_cache(cache_line* cache, int s, int e);


char *help_msg = "Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t "
                 "<file>\nOptions:\n  -h Print this help message.\n  -v "
                 "Optional verbose flag.\n  -s <num> Number of set index "
                 "bits.\n  -E <num> Number of lines per set.\n  -b <num> "
                 "Number of block offset bits.\n  -t <file> Trace file.\n\n"
                 "Examples :\n linux> ./csim -s 4 -E 1 -b 4 -t "
                 "traces/yi.trace\n linux>  ./csim -v -s 8 -E 2 "
                 "-b 4 -t traces/yi.trace\n ";

int main(int argc, char *argv[])
{
    int ch;
    // s-组数 e-每组行数 b-每行块数
    int s = 0, e = 0, b = 0;
    // 输入文件路径
    char *f;
    // 是否输出详细信息
    int v_flag = 0;

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
            s = 1 << s;
            break;
        case 'E':
            e = atoi(optarg);
            break;
        case 't':
            f = optarg;
            break;
        }
    }
    cache_line* cache;
    cache = (cache_line*)malloc(sizeof(cache_line) * s * e);
    init_cache(cache, s, e);
    // printSummary(hits, misses, eviction);
    return 0;
}


int hex2dec(char* source) {
    int ans = 0;
    char* ch = source;
    while(*ch != '\0') {
        if(*ch >= '0' && *ch <= '9') {
            ans = ans * 16 + (int)(*ch - '0');
        }
        else {
            ans = ans * 16 + (int)(*ch - 'a' + 10);
        }
        ch++;
    }
    return ans;
}

void init_cache(cache_line* cache, int s, int e) {
    for(int i = 0; i<s; i++) {
        for(int j = 0; j<e; j++) {
           cache[i * e + j].valid = 0;
           cache[i * e + j].tag = 0;
           cache[i * e + j].time_stamp = 0;
        }
    }
}