#include<stdio.h>

int cmp(int a, int b) {
    if(a == b) return 1;
    else return 0;
}

int main() {
    int ans = cmp(1,2);
    printf("%d\n", ans);
}