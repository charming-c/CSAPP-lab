# bomb lab 笔记解析

## 1. phase_1

>  tips: 首先要学会使用 gdb 才可以开始这个实验

查看关于 phase_1 函数的汇编代码：

![image-20220517193015629](/Users/charming/Library/Application Support/typora-user-images/image-20220517193015629.png)

可以看到，phase_1 函数只是调用了 strings_not_equal 函数就判断了炸弹是否爆炸，而对于 phase_1 函数，由源码可以知道会将读取的第一行传入作为第一个参数，所以到调用 strings_not_eqaul 时，函数一共有两个参数，而想要炸弹不爆炸，就必须保证传入的两个参数他们对于 string_not_eqauls 函数 返回值（保存在 %eax ）必须为1，而第二个参数就存储在 %esi 中， 在函数调用时打断点，同时将 %esi 中保存的地址转化为 char * 类型打印出来，答案就出来了



> Strings_not_equal 比较两个字符串，内容相同 返回0， 不同 返回 正值
>
> 查看会=汇编发现函数的比较逻辑是这样的：
>
> 1. 先计算两个字符串的长度，相同，则继续到第二步，不同则返回正值
> 2. 依次从字符串的第一个 char 开始比较，相同，则将依次比较下一个，直到比较到字符串结尾，或者不相同为止

## 2. phase_2

这个函数比较有意思 phase_2函数首先通过 read_six_numbers 将 6个数字读取到栈顶，而 read_six_numbers 的汇编代码比较有意思：

![image-20220517200324847](https://raw.githubusercontent.com/charming-c/image-host/master/img/image-20220517200324847.png)

函数通过两个寄存器 %rdi 存储 phase_2 调用时栈顶指针的地址， %rsp 存储当前函数栈顶指针的地址，然后将 %rdi 的高地址的各个位置要么写进 %rsp 的高地址中存储， 要么写进其他参数寄存器，这样就可以在 0x40148a 这里函数调用时，动态的赋值这些地址的值，从而巧妙的将 6 个数字存储在了 phase_2 的栈帧中，这里读的其实就是我们输入的答案，这时候在查看 phase_2 函数，什么情况炸弹不会爆炸：

![image-20220517200859156](https://raw.githubusercontent.com/charming-c/image-host/master/img/image-20220517200859156.png)

可以看到，一开始 %rbx 存储 0x4(%rsp) 的地址， 然后 %rbp 存储 0x18(%rsp) 的地址，中间刚好可以容纳 24 个字节，也就是读取的 6 个数，然后一个循环，一开始 %eax 为 1，从第一个数字开始比较，每次正确以后，%eax 中的数字翻倍， 一直比较到 当 %eax 的值为 %rbp 的地址的值时，此时也就比对 6 个数字全部正确，炸弹不爆炸，答案就是 1 2 4 8 16 32



## 3. phase_3

通过打断点调试可以知道，经由函数 __isoc99_sscanf@plt 调用以后，栈中 0xc(%rsp)、0x8(%rsp) 分别存储读取的第一个和第二个数字，同时汇编有：

![image-20220517202337941](https://raw.githubusercontent.com/charming-c/image-host/master/img/image-20220517202337941.png)

第一个数字应该小于 7， 然后通过间接地址引用，断点调试出只有当数字为0 或者 1 时，计算出的跳转地址才是可行的

通过gdb 的调试命令 `x /u *(0x402470)` 以及 `x /u *(0x402470)`, 得到当第一个数字为 0 时，下一步在 0x400f7c; 为 1 时，下一步在 0x400fb9 所以本题有两个答案： 0 207 以及 1 311



## 4. phase_4

有了前面三个题目的基础可以很直接得出以下已知条件

- 本题答案需要两个数字，第一个数必须小于等于 14， 第二个数字必须为 0，
- 对于调用的 func4 函数返回值必须为 0，
- Func4 有三个参数 第一个数字 0 14

查看 func4 的汇编，发现其实是一个递归函数，简单还原了这个函数的 c语言源代码：

```c
int func4 (int a, int b, int c) {
	int tmp = c - b;
	int e = tmp >> 31;
	tmp = e + tmp;
	tmp /= 2;
	int x = tmp + b;
	if(x <= a) {
		if(x == a) return 0;
		else {
		b = x + 1;
		return 2 * func4(a, b, c) + 1;
		}
	}
	else {
	c = x - 1;
	return 2 * func(a, b, c);
	}
}
```

带入具体数据可以知道，当 b = 0, c = 14 时，a可以为 7， 3， 1

所以本题答案有三个