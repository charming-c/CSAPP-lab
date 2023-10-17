
main2.o:     file format elf64-x86-64
main2.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000004f  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000010  0000000000000000  0000000000000000  00000090  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  000000a0  2**0
                  ALLOC
  3 .rodata.str1.1 0000000d  0000000000000000  0000000000000000  000000a0  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .comment      0000002a  0000000000000000  0000000000000000  000000ad  2**0
                  CONTENTS, READONLY
  5 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000d7  2**0
                  CONTENTS, READONLY
  6 .eh_frame     00000030  0000000000000000  0000000000000000  000000d8  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 main2.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .rodata.str1.1	0000000000000000 .rodata.str1.1
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l       .rodata.str1.1	0000000000000000 .LC0
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	000000000000004f main
0000000000000008       O *COM*	0000000000000008 z
0000000000000000 g     O .data	0000000000000008 y
0000000000000008 g     O .data	0000000000000008 x
0000000000000000         *UND*	0000000000000000 _GLOBAL_OFFSET_TABLE_
0000000000000000         *UND*	0000000000000000 addvec
0000000000000000         *UND*	0000000000000000 __printf_chk



Disassembly of section .text:

0000000000000000 <main>:
   0:	48 83 ec 08          	sub    $0x8,%rsp
   4:	b9 02 00 00 00       	mov    $0x2,%ecx
   9:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 10 <main+0x10>
			c: R_X86_64_PC32	z-0x4
  10:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 17 <main+0x17>
			13: R_X86_64_PC32	y-0x4
  17:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1e <main+0x1e>
			1a: R_X86_64_PC32	x-0x4
  1e:	e8 00 00 00 00       	callq  23 <main+0x23>
			1f: R_X86_64_PLT32	addvec-0x4
  23:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 29 <main+0x29>
			25: R_X86_64_PC32	z
  29:	8b 15 00 00 00 00    	mov    0x0(%rip),%edx        # 2f <main+0x2f>
			2b: R_X86_64_PC32	z-0x4
  2f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 36 <main+0x36>
			32: R_X86_64_PC32	.LC0-0x4
  36:	bf 01 00 00 00       	mov    $0x1,%edi
  3b:	b8 00 00 00 00       	mov    $0x0,%eax
  40:	e8 00 00 00 00       	callq  45 <main+0x45>
			41: R_X86_64_PLT32	__printf_chk-0x4
  45:	b8 00 00 00 00       	mov    $0x0,%eax
  4a:	48 83 c4 08          	add    $0x8,%rsp
  4e:	c3                   	retq   
