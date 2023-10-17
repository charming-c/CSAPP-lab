
p1:     file format elf64-x86-64
p1
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000510

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r--
  INTERP off    0x0000000000000238 vaddr 0x0000000000000238 paddr 0x0000000000000238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000840 memsz 0x0000000000000840 flags r-x
    LOAD off    0x0000000000000df0 vaddr 0x0000000000200df0 paddr 0x0000000000200df0 align 2**21
         filesz 0x0000000000000230 memsz 0x0000000000000240 flags rw-
 DYNAMIC off    0x0000000000000e00 vaddr 0x0000000000200e00 paddr 0x0000000000200e00 align 2**3
         filesz 0x00000000000001c0 memsz 0x00000000000001c0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000000254 paddr 0x0000000000000254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x00000000000006e4 vaddr 0x00000000000006e4 paddr 0x00000000000006e4 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000df0 vaddr 0x0000000000200df0 paddr 0x0000000000200df0 align 2**0
         filesz 0x0000000000000210 memsz 0x0000000000000210 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x00000000000004d0
  FINI                 0x00000000000006d4
  INIT_ARRAY           0x0000000000200df0
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200df8
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000000298
  STRTAB               0x0000000000000348
  SYMTAB               0x00000000000002b8
  STRSZ                0x000000000000007d
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000200fc0
  RELA                 0x00000000000003f8
  RELASZ               0x00000000000000d8
  RELAENT              0x0000000000000018
  FLAGS                0x0000000000000008
  FLAGS_1              0x0000000008000001
  VERNEED              0x00000000000003d8
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000000003c6
  RELACOUNT            0x0000000000000004

Version References:
  required from libc.so.6:
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000000238  0000000000000238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000000254  0000000000000254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000000274  0000000000000274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     0000001c  0000000000000298  0000000000000298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000090  00000000000002b8  00000000000002b8  000002b8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       0000007d  0000000000000348  0000000000000348  00000348  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  0000000c  00000000000003c6  00000000000003c6  000003c6  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000020  00000000000003d8  00000000000003d8  000003d8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     000000d8  00000000000003f8  00000000000003f8  000003f8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .init         00000017  00000000000004d0  00000000000004d0  000004d0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .plt          00000010  00000000000004f0  00000000000004f0  000004f0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt.got      00000008  0000000000000500  0000000000000500  00000500  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         000001c2  0000000000000510  0000000000000510  00000510  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000009  00000000000006d4  00000000000006d4  000006d4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       00000004  00000000000006e0  00000000000006e0  000006e0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 00000044  00000000000006e4  00000000000006e4  000006e4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     00000118  0000000000000728  0000000000000728  00000728  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000008  0000000000200df0  0000000000200df0  00000df0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000008  0000000000200df8  0000000000200df8  00000df8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .dynamic      000001c0  0000000000200e00  0000000000200e00  00000e00  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .got          00000040  0000000000200fc0  0000000000200fc0  00000fc0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .data         00000020  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .bss          00000010  0000000000201020  0000000000201020  00001020  2**3
                  ALLOC
 23 .comment      00000029  0000000000000000  0000000000000000  00001020  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000238 l    d  .interp	0000000000000000              .interp
0000000000000254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000000274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000000298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000000002b8 l    d  .dynsym	0000000000000000              .dynsym
0000000000000348 l    d  .dynstr	0000000000000000              .dynstr
00000000000003c6 l    d  .gnu.version	0000000000000000              .gnu.version
00000000000003d8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
00000000000003f8 l    d  .rela.dyn	0000000000000000              .rela.dyn
00000000000004d0 l    d  .init	0000000000000000              .init
00000000000004f0 l    d  .plt	0000000000000000              .plt
0000000000000500 l    d  .plt.got	0000000000000000              .plt.got
0000000000000510 l    d  .text	0000000000000000              .text
00000000000006d4 l    d  .fini	0000000000000000              .fini
00000000000006e0 l    d  .rodata	0000000000000000              .rodata
00000000000006e4 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000000728 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200df0 l    d  .init_array	0000000000000000              .init_array
0000000000200df8 l    d  .fini_array	0000000000000000              .fini_array
0000000000200e00 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fc0 l    d  .got	0000000000000000              .got
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201020 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000540 l     F .text	0000000000000000              deregister_tm_clones
0000000000000580 l     F .text	0000000000000000              register_tm_clones
00000000000005d0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201020 l     O .bss	0000000000000001              completed.7698
0000000000200df8 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000000610 l     F .text	0000000000000000              frame_dummy
0000000000200df0 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              m.c
0000000000000000 l    df *ABS*	0000000000000000              swap.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
000000000000083c l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000200df8 l       .init_array	0000000000000000              __init_array_end
0000000000200e00 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000200df0 l       .init_array	0000000000000000              __init_array_start
00000000000006e4 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000200fc0 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
00000000000006d0 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201000  w      .data	0000000000000000              data_start
0000000000201020 g       .data	0000000000000000              _edata
00000000000006d4 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000201000 g       .data	0000000000000000              __data_start
0000000000201018 g     O .data	0000000000000008              bufp0
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
00000000000006e0 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000000660 g     F .text	0000000000000065              __libc_csu_init
0000000000201030 g       .bss	0000000000000000              _end
0000000000000510 g     F .text	000000000000002b              _start
0000000000201010 g     O .data	0000000000000008              buf
0000000000201020 g       .bss	0000000000000000              __bss_start
000000000000061a g     F .text	0000000000000018              main
0000000000201020 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000632 g     F .text	0000000000000029              swap
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
00000000000004d0 g     F .init	0000000000000000              _init
0000000000201028 g     O .bss	0000000000000008              bufp1



Disassembly of section .init:

00000000000004d0 <_init>:
 4d0:	48 83 ec 08          	sub    $0x8,%rsp
 4d4:	48 8b 05 0d 0b 20 00 	mov    0x200b0d(%rip),%rax        # 200fe8 <__gmon_start__>
 4db:	48 85 c0             	test   %rax,%rax
 4de:	74 02                	je     4e2 <_init+0x12>
 4e0:	ff d0                	callq  *%rax
 4e2:	48 83 c4 08          	add    $0x8,%rsp
 4e6:	c3                   	retq   

Disassembly of section .plt:

00000000000004f0 <.plt>:
 4f0:	ff 35 d2 0a 20 00    	pushq  0x200ad2(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4f6:	ff 25 d4 0a 20 00    	jmpq   *0x200ad4(%rip)        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4fc:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000000500 <__cxa_finalize@plt>:
 500:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 506:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000510 <_start>:
 510:	31 ed                	xor    %ebp,%ebp
 512:	49 89 d1             	mov    %rdx,%r9
 515:	5e                   	pop    %rsi
 516:	48 89 e2             	mov    %rsp,%rdx
 519:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 51d:	50                   	push   %rax
 51e:	54                   	push   %rsp
 51f:	4c 8d 05 aa 01 00 00 	lea    0x1aa(%rip),%r8        # 6d0 <__libc_csu_fini>
 526:	48 8d 0d 33 01 00 00 	lea    0x133(%rip),%rcx        # 660 <__libc_csu_init>
 52d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 61a <main>
 534:	ff 15 a6 0a 20 00    	callq  *0x200aa6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 53a:	f4                   	hlt    
 53b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000540 <deregister_tm_clones>:
 540:	48 8d 3d d9 0a 20 00 	lea    0x200ad9(%rip),%rdi        # 201020 <__TMC_END__>
 547:	55                   	push   %rbp
 548:	48 8d 05 d1 0a 20 00 	lea    0x200ad1(%rip),%rax        # 201020 <__TMC_END__>
 54f:	48 39 f8             	cmp    %rdi,%rax
 552:	48 89 e5             	mov    %rsp,%rbp
 555:	74 19                	je     570 <deregister_tm_clones+0x30>
 557:	48 8b 05 7a 0a 20 00 	mov    0x200a7a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 55e:	48 85 c0             	test   %rax,%rax
 561:	74 0d                	je     570 <deregister_tm_clones+0x30>
 563:	5d                   	pop    %rbp
 564:	ff e0                	jmpq   *%rax
 566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 56d:	00 00 00 
 570:	5d                   	pop    %rbp
 571:	c3                   	retq   
 572:	0f 1f 40 00          	nopl   0x0(%rax)
 576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 57d:	00 00 00 

0000000000000580 <register_tm_clones>:
 580:	48 8d 3d 99 0a 20 00 	lea    0x200a99(%rip),%rdi        # 201020 <__TMC_END__>
 587:	48 8d 35 92 0a 20 00 	lea    0x200a92(%rip),%rsi        # 201020 <__TMC_END__>
 58e:	55                   	push   %rbp
 58f:	48 29 fe             	sub    %rdi,%rsi
 592:	48 89 e5             	mov    %rsp,%rbp
 595:	48 c1 fe 03          	sar    $0x3,%rsi
 599:	48 89 f0             	mov    %rsi,%rax
 59c:	48 c1 e8 3f          	shr    $0x3f,%rax
 5a0:	48 01 c6             	add    %rax,%rsi
 5a3:	48 d1 fe             	sar    %rsi
 5a6:	74 18                	je     5c0 <register_tm_clones+0x40>
 5a8:	48 8b 05 41 0a 20 00 	mov    0x200a41(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 5af:	48 85 c0             	test   %rax,%rax
 5b2:	74 0c                	je     5c0 <register_tm_clones+0x40>
 5b4:	5d                   	pop    %rbp
 5b5:	ff e0                	jmpq   *%rax
 5b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 5be:	00 00 
 5c0:	5d                   	pop    %rbp
 5c1:	c3                   	retq   
 5c2:	0f 1f 40 00          	nopl   0x0(%rax)
 5c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5cd:	00 00 00 

00000000000005d0 <__do_global_dtors_aux>:
 5d0:	80 3d 49 0a 20 00 00 	cmpb   $0x0,0x200a49(%rip)        # 201020 <__TMC_END__>
 5d7:	75 2f                	jne    608 <__do_global_dtors_aux+0x38>
 5d9:	48 83 3d 17 0a 20 00 	cmpq   $0x0,0x200a17(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5e0:	00 
 5e1:	55                   	push   %rbp
 5e2:	48 89 e5             	mov    %rsp,%rbp
 5e5:	74 0c                	je     5f3 <__do_global_dtors_aux+0x23>
 5e7:	48 8b 3d 1a 0a 20 00 	mov    0x200a1a(%rip),%rdi        # 201008 <__dso_handle>
 5ee:	e8 0d ff ff ff       	callq  500 <__cxa_finalize@plt>
 5f3:	e8 48 ff ff ff       	callq  540 <deregister_tm_clones>
 5f8:	c6 05 21 0a 20 00 01 	movb   $0x1,0x200a21(%rip)        # 201020 <__TMC_END__>
 5ff:	5d                   	pop    %rbp
 600:	c3                   	retq   
 601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 608:	f3 c3                	repz retq 
 60a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000610 <frame_dummy>:
 610:	55                   	push   %rbp
 611:	48 89 e5             	mov    %rsp,%rbp
 614:	5d                   	pop    %rbp
 615:	e9 66 ff ff ff       	jmpq   580 <register_tm_clones>

000000000000061a <main>:
 61a:	48 83 ec 08          	sub    $0x8,%rsp
 61e:	b8 00 00 00 00       	mov    $0x0,%eax
 623:	e8 0a 00 00 00       	callq  632 <swap>
 628:	b8 00 00 00 00       	mov    $0x0,%eax
 62d:	48 83 c4 08          	add    $0x8,%rsp
 631:	c3                   	retq   

0000000000000632 <swap>:
 632:	48 8d 05 db 09 20 00 	lea    0x2009db(%rip),%rax        # 201014 <buf+0x4>
 639:	48 89 05 e8 09 20 00 	mov    %rax,0x2009e8(%rip)        # 201028 <bufp1>
 640:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 201018 <bufp0>
 647:	8b 10                	mov    (%rax),%edx
 649:	8b 0d c5 09 20 00    	mov    0x2009c5(%rip),%ecx        # 201014 <buf+0x4>
 64f:	89 08                	mov    %ecx,(%rax)
 651:	48 8b 05 d0 09 20 00 	mov    0x2009d0(%rip),%rax        # 201028 <bufp1>
 658:	89 10                	mov    %edx,(%rax)
 65a:	c3                   	retq   
 65b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000660 <__libc_csu_init>:
 660:	41 57                	push   %r15
 662:	41 56                	push   %r14
 664:	49 89 d7             	mov    %rdx,%r15
 667:	41 55                	push   %r13
 669:	41 54                	push   %r12
 66b:	4c 8d 25 7e 07 20 00 	lea    0x20077e(%rip),%r12        # 200df0 <__frame_dummy_init_array_entry>
 672:	55                   	push   %rbp
 673:	48 8d 2d 7e 07 20 00 	lea    0x20077e(%rip),%rbp        # 200df8 <__init_array_end>
 67a:	53                   	push   %rbx
 67b:	41 89 fd             	mov    %edi,%r13d
 67e:	49 89 f6             	mov    %rsi,%r14
 681:	4c 29 e5             	sub    %r12,%rbp
 684:	48 83 ec 08          	sub    $0x8,%rsp
 688:	48 c1 fd 03          	sar    $0x3,%rbp
 68c:	e8 3f fe ff ff       	callq  4d0 <_init>
 691:	48 85 ed             	test   %rbp,%rbp
 694:	74 20                	je     6b6 <__libc_csu_init+0x56>
 696:	31 db                	xor    %ebx,%ebx
 698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 69f:	00 
 6a0:	4c 89 fa             	mov    %r15,%rdx
 6a3:	4c 89 f6             	mov    %r14,%rsi
 6a6:	44 89 ef             	mov    %r13d,%edi
 6a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6ad:	48 83 c3 01          	add    $0x1,%rbx
 6b1:	48 39 dd             	cmp    %rbx,%rbp
 6b4:	75 ea                	jne    6a0 <__libc_csu_init+0x40>
 6b6:	48 83 c4 08          	add    $0x8,%rsp
 6ba:	5b                   	pop    %rbx
 6bb:	5d                   	pop    %rbp
 6bc:	41 5c                	pop    %r12
 6be:	41 5d                	pop    %r13
 6c0:	41 5e                	pop    %r14
 6c2:	41 5f                	pop    %r15
 6c4:	c3                   	retq   
 6c5:	90                   	nop
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <__libc_csu_fini>:
 6d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000006d4 <_fini>:
 6d4:	48 83 ec 08          	sub    $0x8,%rsp
 6d8:	48 83 c4 08          	add    $0x8,%rsp
 6dc:	c3                   	retq   
