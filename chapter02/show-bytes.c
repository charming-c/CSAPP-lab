#include<stdio.h>
#include<string.h>  

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len){
    size_t i;
    for(int i = 0; i<len; i++){
        printf("%.2x\t",start[i]);
    }
    printf("\n");
}

void show_int(int x){
    show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x){
    show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x){
    show_bytes((byte_pointer) &x, sizeof(void *));
}

void test_show_bytes(int val){
    int ival = val;
    float fval = (float) ival;
    int *pval = &ival;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}

int main(){
    // int i = 1010;
    // int *p = &i;
    // test_show_bytes(12345);
    // show_bytes((byte_pointer)&i,1);
    // show_bytes((byte_pointer)&i,2);
    // show_bytes((byte_pointer)&i,3);
    // printf("%p\n",p);
    // show_pointer((void *)&i);

    // char *s = "abcdef";
    // char s[] = {"abcdef"};

    // show_bytes((byte_pointer) s,strlen(s));

    int a = 1;
    int b = 0;
    int c = ~b;
    printf("%d",a&b);
    return 0;
}