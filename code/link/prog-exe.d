
prog:     file format elf64-x86-64
prog
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000540

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r--
  INTERP off    0x0000000000000238 vaddr 0x0000000000000238 paddr 0x0000000000000238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000880 memsz 0x0000000000000880 flags r-x
    LOAD off    0x0000000000000db8 vaddr 0x0000000000200db8 paddr 0x0000000000200db8 align 2**21
         filesz 0x0000000000000260 memsz 0x0000000000000268 flags rw-
 DYNAMIC off    0x0000000000000dc8 vaddr 0x0000000000200dc8 paddr 0x0000000000200dc8 align 2**3
         filesz 0x00000000000001f0 memsz 0x00000000000001f0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000000254 paddr 0x0000000000000254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x0000000000000718 vaddr 0x0000000000000718 paddr 0x0000000000000718 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000db8 vaddr 0x0000000000200db8 paddr 0x0000000000200db8 align 2**0
         filesz 0x0000000000000248 memsz 0x0000000000000248 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x00000000000004f0
  FINI                 0x0000000000000704
  INIT_ARRAY           0x0000000000200db8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200dc0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000000298
  STRTAB               0x0000000000000360
  SYMTAB               0x00000000000002b8
  STRSZ                0x0000000000000084
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000200fb8
  PLTRELSZ             0x0000000000000018
  PLTREL               0x0000000000000007
  JMPREL               0x00000000000004d8
  RELA                 0x0000000000000418
  RELASZ               0x00000000000000c0
  RELAENT              0x0000000000000018
  FLAGS                0x0000000000000008
  FLAGS_1              0x0000000008000001
  VERNEED              0x00000000000003f8
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000000003e4
  RELACOUNT            0x0000000000000003

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
  4 .dynsym       000000a8  00000000000002b8  00000000000002b8  000002b8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       00000084  0000000000000360  0000000000000360  00000360  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  0000000e  00000000000003e4  00000000000003e4  000003e4  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000020  00000000000003f8  00000000000003f8  000003f8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     000000c0  0000000000000418  0000000000000418  00000418  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000018  00000000000004d8  00000000000004d8  000004d8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         00000017  00000000000004f0  00000000000004f0  000004f0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000020  0000000000000510  0000000000000510  00000510  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt.got      00000008  0000000000000530  0000000000000530  00000530  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text         000001c2  0000000000000540  0000000000000540  00000540  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .fini         00000009  0000000000000704  0000000000000704  00000704  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .rodata       00000008  0000000000000710  0000000000000710  00000710  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame_hdr 00000044  0000000000000718  0000000000000718  00000718  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame     00000120  0000000000000760  0000000000000760  00000760  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .init_array   00000008  0000000000200db8  0000000000200db8  00000db8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .fini_array   00000008  0000000000200dc0  0000000000200dc0  00000dc0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001f0  0000000000200dc8  0000000000200dc8  00000dc8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000048  0000000000200fb8  0000000000200fb8  00000fb8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .data         00000018  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .bss          00000008  0000000000201018  0000000000201018  00001018  2**0
                  ALLOC
 24 .comment      00000029  0000000000000000  0000000000000000  00001018  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000238 l    d  .interp	0000000000000000              .interp
0000000000000254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000000274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000000298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000000002b8 l    d  .dynsym	0000000000000000              .dynsym
0000000000000360 l    d  .dynstr	0000000000000000              .dynstr
00000000000003e4 l    d  .gnu.version	0000000000000000              .gnu.version
00000000000003f8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000000418 l    d  .rela.dyn	0000000000000000              .rela.dyn
00000000000004d8 l    d  .rela.plt	0000000000000000              .rela.plt
00000000000004f0 l    d  .init	0000000000000000              .init
0000000000000510 l    d  .plt	0000000000000000              .plt
0000000000000530 l    d  .plt.got	0000000000000000              .plt.got
0000000000000540 l    d  .text	0000000000000000              .text
0000000000000704 l    d  .fini	0000000000000000              .fini
0000000000000710 l    d  .rodata	0000000000000000              .rodata
0000000000000718 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000000760 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200db8 l    d  .init_array	0000000000000000              .init_array
0000000000200dc0 l    d  .fini_array	0000000000000000              .fini_array
0000000000200dc8 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fb8 l    d  .got	0000000000000000              .got
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201018 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000570 l     F .text	0000000000000000              deregister_tm_clones
00000000000005b0 l     F .text	0000000000000000              register_tm_clones
0000000000000600 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201018 l     O .bss	0000000000000001              completed.7698
0000000000200dc0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000000640 l     F .text	0000000000000000              frame_dummy
0000000000200db8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.c
0000000000000000 l    df *ABS*	0000000000000000              sum.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
000000000000087c l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000200dc0 l       .init_array	0000000000000000              __init_array_end
0000000000200dc8 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000200db8 l       .init_array	0000000000000000              __init_array_start
0000000000000718 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000200fb8 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000000700 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201000  w      .data	0000000000000000              data_start
0000000000201010 g     O .data	0000000000000008              array
0000000000201018 g       .data	0000000000000000              _edata
0000000000000704 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              printf@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000201000 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000000675 g     F .text	000000000000001b              sum
0000000000000710 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000000690 g     F .text	0000000000000065              __libc_csu_init
0000000000201020 g       .bss	0000000000000000              _end
0000000000000540 g     F .text	000000000000002b              _start
0000000000201018 g       .bss	0000000000000000              __bss_start
000000000000064a g     F .text	000000000000002b              main
0000000000201018 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
00000000000004f0 g     F .init	0000000000000000              _init



Disassembly of section .init:

00000000000004f0 <_init>:
 4f0:	48 83 ec 08          	sub    $0x8,%rsp
 4f4:	48 8b 05 ed 0a 20 00 	mov    0x200aed(%rip),%rax        # 200fe8 <__gmon_start__>
 4fb:	48 85 c0             	test   %rax,%rax
 4fe:	74 02                	je     502 <_init+0x12>
 500:	ff d0                	callq  *%rax
 502:	48 83 c4 08          	add    $0x8,%rsp
 506:	c3                   	retq   

Disassembly of section .plt:

0000000000000510 <.plt>:
 510:	ff 35 aa 0a 20 00    	pushq  0x200aaa(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
 516:	ff 25 ac 0a 20 00    	jmpq   *0x200aac(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
 51c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000520 <printf@plt>:
 520:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 200fd0 <printf@GLIBC_2.2.5>
 526:	68 00 00 00 00       	pushq  $0x0
 52b:	e9 e0 ff ff ff       	jmpq   510 <.plt>

Disassembly of section .plt.got:

0000000000000530 <__cxa_finalize@plt>:
 530:	ff 25 c2 0a 20 00    	jmpq   *0x200ac2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 536:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000540 <_start>:
 540:	31 ed                	xor    %ebp,%ebp
 542:	49 89 d1             	mov    %rdx,%r9
 545:	5e                   	pop    %rsi
 546:	48 89 e2             	mov    %rsp,%rdx
 549:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 54d:	50                   	push   %rax
 54e:	54                   	push   %rsp
 54f:	4c 8d 05 aa 01 00 00 	lea    0x1aa(%rip),%r8        # 700 <__libc_csu_fini>
 556:	48 8d 0d 33 01 00 00 	lea    0x133(%rip),%rcx        # 690 <__libc_csu_init>
 55d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 64a <main>
 564:	ff 15 76 0a 20 00    	callq  *0x200a76(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 56a:	f4                   	hlt    
 56b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000570 <deregister_tm_clones>:
 570:	48 8d 3d a1 0a 20 00 	lea    0x200aa1(%rip),%rdi        # 201018 <__TMC_END__>
 577:	55                   	push   %rbp
 578:	48 8d 05 99 0a 20 00 	lea    0x200a99(%rip),%rax        # 201018 <__TMC_END__>
 57f:	48 39 f8             	cmp    %rdi,%rax
 582:	48 89 e5             	mov    %rsp,%rbp
 585:	74 19                	je     5a0 <deregister_tm_clones+0x30>
 587:	48 8b 05 4a 0a 20 00 	mov    0x200a4a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 58e:	48 85 c0             	test   %rax,%rax
 591:	74 0d                	je     5a0 <deregister_tm_clones+0x30>
 593:	5d                   	pop    %rbp
 594:	ff e0                	jmpq   *%rax
 596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 59d:	00 00 00 
 5a0:	5d                   	pop    %rbp
 5a1:	c3                   	retq   
 5a2:	0f 1f 40 00          	nopl   0x0(%rax)
 5a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ad:	00 00 00 

00000000000005b0 <register_tm_clones>:
 5b0:	48 8d 3d 61 0a 20 00 	lea    0x200a61(%rip),%rdi        # 201018 <__TMC_END__>
 5b7:	48 8d 35 5a 0a 20 00 	lea    0x200a5a(%rip),%rsi        # 201018 <__TMC_END__>
 5be:	55                   	push   %rbp
 5bf:	48 29 fe             	sub    %rdi,%rsi
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	48 c1 fe 03          	sar    $0x3,%rsi
 5c9:	48 89 f0             	mov    %rsi,%rax
 5cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 5d0:	48 01 c6             	add    %rax,%rsi
 5d3:	48 d1 fe             	sar    %rsi
 5d6:	74 18                	je     5f0 <register_tm_clones+0x40>
 5d8:	48 8b 05 11 0a 20 00 	mov    0x200a11(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 5df:	48 85 c0             	test   %rax,%rax
 5e2:	74 0c                	je     5f0 <register_tm_clones+0x40>
 5e4:	5d                   	pop    %rbp
 5e5:	ff e0                	jmpq   *%rax
 5e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 5ee:	00 00 
 5f0:	5d                   	pop    %rbp
 5f1:	c3                   	retq   
 5f2:	0f 1f 40 00          	nopl   0x0(%rax)
 5f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5fd:	00 00 00 

0000000000000600 <__do_global_dtors_aux>:
 600:	80 3d 11 0a 20 00 00 	cmpb   $0x0,0x200a11(%rip)        # 201018 <__TMC_END__>
 607:	75 2f                	jne    638 <__do_global_dtors_aux+0x38>
 609:	48 83 3d e7 09 20 00 	cmpq   $0x0,0x2009e7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 610:	00 
 611:	55                   	push   %rbp
 612:	48 89 e5             	mov    %rsp,%rbp
 615:	74 0c                	je     623 <__do_global_dtors_aux+0x23>
 617:	48 8b 3d ea 09 20 00 	mov    0x2009ea(%rip),%rdi        # 201008 <__dso_handle>
 61e:	e8 0d ff ff ff       	callq  530 <__cxa_finalize@plt>
 623:	e8 48 ff ff ff       	callq  570 <deregister_tm_clones>
 628:	c6 05 e9 09 20 00 01 	movb   $0x1,0x2009e9(%rip)        # 201018 <__TMC_END__>
 62f:	5d                   	pop    %rbp
 630:	c3                   	retq   
 631:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 638:	f3 c3                	repz retq 
 63a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000640 <frame_dummy>:
 640:	55                   	push   %rbp
 641:	48 89 e5             	mov    %rsp,%rbp
 644:	5d                   	pop    %rbp
 645:	e9 66 ff ff ff       	jmpq   5b0 <register_tm_clones>

000000000000064a <main>:
 64a:	53                   	push   %rbx
 64b:	be 02 00 00 00       	mov    $0x2,%esi
 650:	48 8d 3d b9 09 20 00 	lea    0x2009b9(%rip),%rdi        # 201010 <array>
 657:	e8 19 00 00 00       	callq  675 <sum>
 65c:	89 c3                	mov    %eax,%ebx
 65e:	89 c6                	mov    %eax,%esi
 660:	48 8d 3d ad 00 00 00 	lea    0xad(%rip),%rdi        # 714 <_IO_stdin_used+0x4>
 667:	b8 00 00 00 00       	mov    $0x0,%eax
 66c:	e8 af fe ff ff       	callq  520 <printf@plt>
 671:	89 d8                	mov    %ebx,%eax
 673:	5b                   	pop    %rbx
 674:	c3                   	retq   

0000000000000675 <sum>:
 675:	b8 00 00 00 00       	mov    $0x0,%eax
 67a:	ba 00 00 00 00       	mov    $0x0,%edx
 67f:	eb 09                	jmp    68a <sum+0x15>
 681:	48 63 ca             	movslq %edx,%rcx
 684:	03 04 8f             	add    (%rdi,%rcx,4),%eax
 687:	83 c2 01             	add    $0x1,%edx
 68a:	39 f2                	cmp    %esi,%edx
 68c:	7c f3                	jl     681 <sum+0xc>
 68e:	f3 c3                	repz retq 

0000000000000690 <__libc_csu_init>:
 690:	41 57                	push   %r15
 692:	41 56                	push   %r14
 694:	49 89 d7             	mov    %rdx,%r15
 697:	41 55                	push   %r13
 699:	41 54                	push   %r12
 69b:	4c 8d 25 16 07 20 00 	lea    0x200716(%rip),%r12        # 200db8 <__frame_dummy_init_array_entry>
 6a2:	55                   	push   %rbp
 6a3:	48 8d 2d 16 07 20 00 	lea    0x200716(%rip),%rbp        # 200dc0 <__init_array_end>
 6aa:	53                   	push   %rbx
 6ab:	41 89 fd             	mov    %edi,%r13d
 6ae:	49 89 f6             	mov    %rsi,%r14
 6b1:	4c 29 e5             	sub    %r12,%rbp
 6b4:	48 83 ec 08          	sub    $0x8,%rsp
 6b8:	48 c1 fd 03          	sar    $0x3,%rbp
 6bc:	e8 2f fe ff ff       	callq  4f0 <_init>
 6c1:	48 85 ed             	test   %rbp,%rbp
 6c4:	74 20                	je     6e6 <__libc_csu_init+0x56>
 6c6:	31 db                	xor    %ebx,%ebx
 6c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6cf:	00 
 6d0:	4c 89 fa             	mov    %r15,%rdx
 6d3:	4c 89 f6             	mov    %r14,%rsi
 6d6:	44 89 ef             	mov    %r13d,%edi
 6d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6dd:	48 83 c3 01          	add    $0x1,%rbx
 6e1:	48 39 dd             	cmp    %rbx,%rbp
 6e4:	75 ea                	jne    6d0 <__libc_csu_init+0x40>
 6e6:	48 83 c4 08          	add    $0x8,%rsp
 6ea:	5b                   	pop    %rbx
 6eb:	5d                   	pop    %rbp
 6ec:	41 5c                	pop    %r12
 6ee:	41 5d                	pop    %r13
 6f0:	41 5e                	pop    %r14
 6f2:	41 5f                	pop    %r15
 6f4:	c3                   	retq   
 6f5:	90                   	nop
 6f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6fd:	00 00 00 

0000000000000700 <__libc_csu_fini>:
 700:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000704 <_fini>:
 704:	48 83 ec 08          	sub    $0x8,%rsp
 708:	48 83 c4 08          	add    $0x8,%rsp
 70c:	c3                   	retq   
