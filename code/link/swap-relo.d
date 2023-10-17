
swap.o:     file format elf64-x86-64
swap.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000029  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000000  0000000000000000  0000000000000000  00000069  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  00000069  2**0
                  ALLOC
  3 .data.rel     00000008  0000000000000000  0000000000000000  00000070  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, DATA
  4 .comment      0000002a  0000000000000000  0000000000000000  00000078  2**0
                  CONTENTS, READONLY
  5 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000a2  2**0
                  CONTENTS, READONLY
  6 .eh_frame     00000030  0000000000000000  0000000000000000  000000a8  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 swap.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .data.rel	0000000000000000 .data.rel
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	0000000000000029 swap
0000000000000000         *UND*	0000000000000000 buf
0000000000000008       O *COM*	0000000000000008 bufp1
0000000000000000 g     O .data.rel	0000000000000008 bufp0



Disassembly of section .text:

0000000000000000 <swap>:
   0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7 <swap+0x7>
			3: R_X86_64_PC32	buf
   7:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # e <swap+0xe>
			a: R_X86_64_PC32	bufp1-0x4
   e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 15 <swap+0x15>
			11: R_X86_64_PC32	bufp0-0x4
  15:	8b 10                	mov    (%rax),%edx
  17:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 1d <swap+0x1d>
			19: R_X86_64_PC32	buf
  1d:	89 08                	mov    %ecx,(%rax)
  1f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 26 <swap+0x26>
			22: R_X86_64_PC32	bufp1-0x4
  26:	89 10                	mov    %edx,(%rax)
  28:	c3                   	retq   
