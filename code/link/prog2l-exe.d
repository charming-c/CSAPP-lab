
prog2l:     file format elf64-x86-64
prog2l
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000670

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r--
  INTERP off    0x0000000000000238 vaddr 0x0000000000000238 paddr 0x0000000000000238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x00000000000009a0 memsz 0x00000000000009a0 flags r-x
    LOAD off    0x0000000000000da0 vaddr 0x0000000000200da0 paddr 0x0000000000200da0 align 2**21
         filesz 0x0000000000000280 memsz 0x0000000000000290 flags rw-
 DYNAMIC off    0x0000000000000db0 vaddr 0x0000000000200db0 paddr 0x0000000000200db0 align 2**3
         filesz 0x0000000000000200 memsz 0x0000000000000200 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000000254 paddr 0x0000000000000254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x0000000000000864 vaddr 0x0000000000000864 paddr 0x0000000000000864 align 2**2
         filesz 0x000000000000003c memsz 0x000000000000003c flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000da0 vaddr 0x0000000000200da0 paddr 0x0000000000200da0 align 2**0
         filesz 0x0000000000000260 memsz 0x0000000000000260 flags r--

Dynamic Section:
  NEEDED               ./libvector.so
  NEEDED               libc.so.6
  INIT                 0x0000000000000618
  FINI                 0x0000000000000844
  INIT_ARRAY           0x0000000000200da0
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200da8
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000000298
  STRTAB               0x0000000000000408
  SYMTAB               0x00000000000002d0
  STRSZ                0x00000000000000d0
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000200fb0
  PLTRELSZ             0x0000000000000030
  PLTREL               0x0000000000000007
  JMPREL               0x00000000000005e8
  RELA                 0x0000000000000528
  RELASZ               0x00000000000000c0
  RELAENT              0x0000000000000018
  FLAGS                0x0000000000000008
  FLAGS_1              0x0000000008000001
  VERNEED              0x00000000000004f8
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000000004d8
  RELACOUNT            0x0000000000000003

Version References:
  required from libc.so.6:
    0x09691974 0x00 03 GLIBC_2.3.4
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000000238  0000000000000238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000000254  0000000000000254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000000274  0000000000000274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     00000038  0000000000000298  0000000000000298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000138  00000000000002d0  00000000000002d0  000002d0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       000000d0  0000000000000408  0000000000000408  00000408  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  0000001a  00000000000004d8  00000000000004d8  000004d8  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000030  00000000000004f8  00000000000004f8  000004f8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     000000c0  0000000000000528  0000000000000528  00000528  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000030  00000000000005e8  00000000000005e8  000005e8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         00000017  0000000000000618  0000000000000618  00000618  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000030  0000000000000630  0000000000000630  00000630  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt.got      00000008  0000000000000660  0000000000000660  00000660  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text         000001d2  0000000000000670  0000000000000670  00000670  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .fini         00000009  0000000000000844  0000000000000844  00000844  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .rodata       00000011  0000000000000850  0000000000000850  00000850  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame_hdr 0000003c  0000000000000864  0000000000000864  00000864  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame     00000100  00000000000008a0  00000000000008a0  000008a0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .init_array   00000008  0000000000200da0  0000000000200da0  00000da0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .fini_array   00000008  0000000000200da8  0000000000200da8  00000da8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      00000200  0000000000200db0  0000000000200db0  00000db0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000050  0000000000200fb0  0000000000200fb0  00000fb0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .data         00000020  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .bss          00000010  0000000000201020  0000000000201020  00001020  2**3
                  ALLOC
 24 .comment      00000029  0000000000000000  0000000000000000  00001020  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000238 l    d  .interp	0000000000000000              .interp
0000000000000254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000000274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000000298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000000002d0 l    d  .dynsym	0000000000000000              .dynsym
0000000000000408 l    d  .dynstr	0000000000000000              .dynstr
00000000000004d8 l    d  .gnu.version	0000000000000000              .gnu.version
00000000000004f8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000000528 l    d  .rela.dyn	0000000000000000              .rela.dyn
00000000000005e8 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000000618 l    d  .init	0000000000000000              .init
0000000000000630 l    d  .plt	0000000000000000              .plt
0000000000000660 l    d  .plt.got	0000000000000000              .plt.got
0000000000000670 l    d  .text	0000000000000000              .text
0000000000000844 l    d  .fini	0000000000000000              .fini
0000000000000850 l    d  .rodata	0000000000000000              .rodata
0000000000000864 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
00000000000008a0 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200da0 l    d  .init_array	0000000000000000              .init_array
0000000000200da8 l    d  .fini_array	0000000000000000              .fini_array
0000000000200db0 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fb0 l    d  .got	0000000000000000              .got
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201020 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000006a0 l     F .text	0000000000000000              deregister_tm_clones
00000000000006e0 l     F .text	0000000000000000              register_tm_clones
0000000000000730 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201020 l     O .bss	0000000000000001              completed.7698
0000000000200da8 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000000770 l     F .text	0000000000000000              frame_dummy
0000000000200da0 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main2.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
000000000000099c l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000200da8 l       .init_array	0000000000000000              __init_array_end
0000000000200db0 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000200da0 l       .init_array	0000000000000000              __init_array_start
0000000000000864 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000200fb0 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000000840 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201000  w      .data	0000000000000000              data_start
0000000000201020 g       .data	0000000000000000              _edata
0000000000201028 g     O .bss	0000000000000008              z
0000000000201018 g     O .data	0000000000000008              x
0000000000000844 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              addvec
0000000000201000 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000000850 g     O .rodata	0000000000000004              _IO_stdin_used
00000000000007d0 g     F .text	0000000000000065              __libc_csu_init
0000000000201030 g       .bss	0000000000000000              _end
0000000000000670 g     F .text	000000000000002b              _start
0000000000201010 g     O .data	0000000000000008              y
0000000000201020 g       .bss	0000000000000000              __bss_start
000000000000077a g     F .text	000000000000004f              main
0000000000000000       F *UND*	0000000000000000              __printf_chk@@GLIBC_2.3.4
0000000000201020 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
0000000000000618 g     F .init	0000000000000000              _init



Disassembly of section .init:

0000000000000618 <_init>:
 618:	48 83 ec 08          	sub    $0x8,%rsp
 61c:	48 8b 05 c5 09 20 00 	mov    0x2009c5(%rip),%rax        # 200fe8 <__gmon_start__>
 623:	48 85 c0             	test   %rax,%rax
 626:	74 02                	je     62a <_init+0x12>
 628:	ff d0                	callq  *%rax
 62a:	48 83 c4 08          	add    $0x8,%rsp
 62e:	c3                   	retq   

Disassembly of section .plt:

0000000000000630 <.plt>:
 630:	ff 35 82 09 20 00    	pushq  0x200982(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 84 09 20 00    	jmpq   *0x200984(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <addvec@plt>:
 640:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 200fc8 <addvec>
 646:	68 00 00 00 00       	pushq  $0x0
 64b:	e9 e0 ff ff ff       	jmpq   630 <.plt>

0000000000000650 <__printf_chk@plt>:
 650:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 200fd0 <__printf_chk@GLIBC_2.3.4>
 656:	68 01 00 00 00       	pushq  $0x1
 65b:	e9 d0 ff ff ff       	jmpq   630 <.plt>

Disassembly of section .plt.got:

0000000000000660 <__cxa_finalize@plt>:
 660:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 666:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000670 <_start>:
 670:	31 ed                	xor    %ebp,%ebp
 672:	49 89 d1             	mov    %rdx,%r9
 675:	5e                   	pop    %rsi
 676:	48 89 e2             	mov    %rsp,%rdx
 679:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 67d:	50                   	push   %rax
 67e:	54                   	push   %rsp
 67f:	4c 8d 05 ba 01 00 00 	lea    0x1ba(%rip),%r8        # 840 <__libc_csu_fini>
 686:	48 8d 0d 43 01 00 00 	lea    0x143(%rip),%rcx        # 7d0 <__libc_csu_init>
 68d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 77a <main>
 694:	ff 15 46 09 20 00    	callq  *0x200946(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 69a:	f4                   	hlt    
 69b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006a0 <deregister_tm_clones>:
 6a0:	48 8d 3d 79 09 20 00 	lea    0x200979(%rip),%rdi        # 201020 <__TMC_END__>
 6a7:	55                   	push   %rbp
 6a8:	48 8d 05 71 09 20 00 	lea    0x200971(%rip),%rax        # 201020 <__TMC_END__>
 6af:	48 39 f8             	cmp    %rdi,%rax
 6b2:	48 89 e5             	mov    %rsp,%rbp
 6b5:	74 19                	je     6d0 <deregister_tm_clones+0x30>
 6b7:	48 8b 05 1a 09 20 00 	mov    0x20091a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 6be:	48 85 c0             	test   %rax,%rax
 6c1:	74 0d                	je     6d0 <deregister_tm_clones+0x30>
 6c3:	5d                   	pop    %rbp
 6c4:	ff e0                	jmpq   *%rax
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 
 6d0:	5d                   	pop    %rbp
 6d1:	c3                   	retq   
 6d2:	0f 1f 40 00          	nopl   0x0(%rax)
 6d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6dd:	00 00 00 

00000000000006e0 <register_tm_clones>:
 6e0:	48 8d 3d 39 09 20 00 	lea    0x200939(%rip),%rdi        # 201020 <__TMC_END__>
 6e7:	48 8d 35 32 09 20 00 	lea    0x200932(%rip),%rsi        # 201020 <__TMC_END__>
 6ee:	55                   	push   %rbp
 6ef:	48 29 fe             	sub    %rdi,%rsi
 6f2:	48 89 e5             	mov    %rsp,%rbp
 6f5:	48 c1 fe 03          	sar    $0x3,%rsi
 6f9:	48 89 f0             	mov    %rsi,%rax
 6fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 700:	48 01 c6             	add    %rax,%rsi
 703:	48 d1 fe             	sar    %rsi
 706:	74 18                	je     720 <register_tm_clones+0x40>
 708:	48 8b 05 e1 08 20 00 	mov    0x2008e1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 70f:	48 85 c0             	test   %rax,%rax
 712:	74 0c                	je     720 <register_tm_clones+0x40>
 714:	5d                   	pop    %rbp
 715:	ff e0                	jmpq   *%rax
 717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 71e:	00 00 
 720:	5d                   	pop    %rbp
 721:	c3                   	retq   
 722:	0f 1f 40 00          	nopl   0x0(%rax)
 726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 72d:	00 00 00 

0000000000000730 <__do_global_dtors_aux>:
 730:	80 3d e9 08 20 00 00 	cmpb   $0x0,0x2008e9(%rip)        # 201020 <__TMC_END__>
 737:	75 2f                	jne    768 <__do_global_dtors_aux+0x38>
 739:	48 83 3d b7 08 20 00 	cmpq   $0x0,0x2008b7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 740:	00 
 741:	55                   	push   %rbp
 742:	48 89 e5             	mov    %rsp,%rbp
 745:	74 0c                	je     753 <__do_global_dtors_aux+0x23>
 747:	48 8b 3d ba 08 20 00 	mov    0x2008ba(%rip),%rdi        # 201008 <__dso_handle>
 74e:	e8 0d ff ff ff       	callq  660 <__cxa_finalize@plt>
 753:	e8 48 ff ff ff       	callq  6a0 <deregister_tm_clones>
 758:	c6 05 c1 08 20 00 01 	movb   $0x1,0x2008c1(%rip)        # 201020 <__TMC_END__>
 75f:	5d                   	pop    %rbp
 760:	c3                   	retq   
 761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 768:	f3 c3                	repz retq 
 76a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000770 <frame_dummy>:
 770:	55                   	push   %rbp
 771:	48 89 e5             	mov    %rsp,%rbp
 774:	5d                   	pop    %rbp
 775:	e9 66 ff ff ff       	jmpq   6e0 <register_tm_clones>

000000000000077a <main>:
 77a:	48 83 ec 08          	sub    $0x8,%rsp
 77e:	b9 02 00 00 00       	mov    $0x2,%ecx
 783:	48 8d 15 9e 08 20 00 	lea    0x20089e(%rip),%rdx        # 201028 <z>
 78a:	48 8d 35 7f 08 20 00 	lea    0x20087f(%rip),%rsi        # 201010 <y>
 791:	48 8d 3d 80 08 20 00 	lea    0x200880(%rip),%rdi        # 201018 <x>
 798:	e8 a3 fe ff ff       	callq  640 <addvec@plt>
 79d:	8b 0d 89 08 20 00    	mov    0x200889(%rip),%ecx        # 20102c <z+0x4>
 7a3:	8b 15 7f 08 20 00    	mov    0x20087f(%rip),%edx        # 201028 <z>
 7a9:	48 8d 35 a4 00 00 00 	lea    0xa4(%rip),%rsi        # 854 <_IO_stdin_used+0x4>
 7b0:	bf 01 00 00 00       	mov    $0x1,%edi
 7b5:	b8 00 00 00 00       	mov    $0x0,%eax
 7ba:	e8 91 fe ff ff       	callq  650 <__printf_chk@plt>
 7bf:	b8 00 00 00 00       	mov    $0x0,%eax
 7c4:	48 83 c4 08          	add    $0x8,%rsp
 7c8:	c3                   	retq   
 7c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000007d0 <__libc_csu_init>:
 7d0:	41 57                	push   %r15
 7d2:	41 56                	push   %r14
 7d4:	49 89 d7             	mov    %rdx,%r15
 7d7:	41 55                	push   %r13
 7d9:	41 54                	push   %r12
 7db:	4c 8d 25 be 05 20 00 	lea    0x2005be(%rip),%r12        # 200da0 <__frame_dummy_init_array_entry>
 7e2:	55                   	push   %rbp
 7e3:	48 8d 2d be 05 20 00 	lea    0x2005be(%rip),%rbp        # 200da8 <__init_array_end>
 7ea:	53                   	push   %rbx
 7eb:	41 89 fd             	mov    %edi,%r13d
 7ee:	49 89 f6             	mov    %rsi,%r14
 7f1:	4c 29 e5             	sub    %r12,%rbp
 7f4:	48 83 ec 08          	sub    $0x8,%rsp
 7f8:	48 c1 fd 03          	sar    $0x3,%rbp
 7fc:	e8 17 fe ff ff       	callq  618 <_init>
 801:	48 85 ed             	test   %rbp,%rbp
 804:	74 20                	je     826 <__libc_csu_init+0x56>
 806:	31 db                	xor    %ebx,%ebx
 808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 80f:	00 
 810:	4c 89 fa             	mov    %r15,%rdx
 813:	4c 89 f6             	mov    %r14,%rsi
 816:	44 89 ef             	mov    %r13d,%edi
 819:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 81d:	48 83 c3 01          	add    $0x1,%rbx
 821:	48 39 dd             	cmp    %rbx,%rbp
 824:	75 ea                	jne    810 <__libc_csu_init+0x40>
 826:	48 83 c4 08          	add    $0x8,%rsp
 82a:	5b                   	pop    %rbx
 82b:	5d                   	pop    %rbp
 82c:	41 5c                	pop    %r12
 82e:	41 5d                	pop    %r13
 830:	41 5e                	pop    %r14
 832:	41 5f                	pop    %r15
 834:	c3                   	retq   
 835:	90                   	nop
 836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 83d:	00 00 00 

0000000000000840 <__libc_csu_fini>:
 840:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000844 <_fini>:
 844:	48 83 ec 08          	sub    $0x8,%rsp
 848:	48 83 c4 08          	add    $0x8,%rsp
 84c:	c3                   	retq   
