
main.o:     file format elf64-x86-64
main.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000002b  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000008  0000000000000000  0000000000000000  00000070  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  00000078  2**0
                  ALLOC
  3 .rodata.str1.1 00000004  0000000000000000  0000000000000000  00000078  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .comment      0000002a  0000000000000000  0000000000000000  0000007c  2**0
                  CONTENTS, READONLY
  5 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000a6  2**0
                  CONTENTS, READONLY
  6 .eh_frame     00000038  0000000000000000  0000000000000000  000000a8  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 main.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .rodata.str1.1	0000000000000000 .rodata.str1.1
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l       .rodata.str1.1	0000000000000000 .LC0
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	000000000000002b main
0000000000000000 g     O .data	0000000000000008 array
0000000000000000         *UND*	0000000000000000 _GLOBAL_OFFSET_TABLE_
0000000000000000         *UND*	0000000000000000 sum
0000000000000000         *UND*	0000000000000000 printf



Disassembly of section .text:

0000000000000000 <main>:
   0:	53                   	push   %rbx
   1:	be 02 00 00 00       	mov    $0x2,%esi
   6:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # d <main+0xd>
			9: R_X86_64_PC32	array-0x4
   d:	e8 00 00 00 00       	callq  12 <main+0x12>
			e: R_X86_64_PLT32	sum-0x4
  12:	89 c3                	mov    %eax,%ebx
  14:	89 c6                	mov    %eax,%esi
  16:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1d <main+0x1d>
			19: R_X86_64_PC32	.LC0-0x4
  1d:	b8 00 00 00 00       	mov    $0x0,%eax
  22:	e8 00 00 00 00       	callq  27 <main+0x27>
			23: R_X86_64_PLT32	printf-0x4
  27:	89 d8                	mov    %ebx,%eax
  29:	5b                   	pop    %rbx
  2a:	c3                   	retq   
