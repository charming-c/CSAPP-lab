#include<stdio.h>

void inplace_swap(int *x, int *y){
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void reverse_array(int a[], int cnt){
    int first, last;

    for(first=0, last=cnt-1; first<last; first++,last--){
        inplace_swap(&a[first],&a[last]);
    }
}

float sum_elements(float a[], int length){
    int i;
    float result = 0;

    for(i = 0; i<= length-1; i++){
        // result += a[i];
        printf("%d",i);
    }
    return result;
}

int main(){
    // int a[] = {1,2,3,4,5,6,7};
    // reverse_array(a,7);

    // int x = 0x87654321;
    // int a = x & 0xff;
    // int b = x ^ 0xffffff00;
    // int c = x | 0x000000ff;

    // printf("%x\t%x\t%x\n",a,b,c);

    float a[] = {1.0};
    printf("%f",sum_elements(a,0));
    
}