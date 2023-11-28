#include<stdio.h>
#include<unistd.h>

void f(int n) {
    printf("Number: %d\n", n);
}

int main(int argc, char* ragv[]) {
    int i = 0;
    int a[2];
    printf("f() is at %p\n", a);

    while(1) {
        f(i++);
        sleep(1);
    }
    return 0;
}