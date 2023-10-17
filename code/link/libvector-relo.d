
libvector.so:     file format elf64-x86-64
libvector.so
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000530

Program Header:
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000730 memsz 0x0000000000000730 flags r-x
    LOAD off    0x0000000000000e70 vaddr 0x0000000000200e70 paddr 0x0000000000200e70 align 2**21
         filesz 0x00000000000001b0 memsz 0x00000000000001c0 flags rw-
 DYNAMIC off    0x0000000000000e80 vaddr 0x0000000000200e80 paddr 0x0000000000200e80 align 2**3
         filesz 0x0000000000000150 memsz 0x0000000000000150 flags rw-
    NOTE off    0x00000000000001c8 vaddr 0x00000000000001c8 paddr 0x00000000000001c8 align 2**2
         filesz 0x0000000000000024 memsz 0x0000000000000024 flags r--
EH_FRAME off    0x0000000000000678 vaddr 0x0000000000000678 paddr 0x0000000000000678 align 2**2
         filesz 0x000000000000002c memsz 0x000000000000002c flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000e70 vaddr 0x0000000000200e70 paddr 0x0000000000200e70 align 2**0
         filesz 0x0000000000000190 memsz 0x0000000000000190 flags r--

Dynamic Section:
  INIT                 0x00000000000004f8
  FINI                 0x000000000000066c
  INIT_ARRAY           0x0000000000200e70
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200e78
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x00000000000001f0
  STRTAB               0x0000000000000388
  SYMTAB               0x0000000000000238
  STRSZ                0x0000000000000097
  SYMENT               0x0000000000000018
  PLTGOT               0x0000000000201000
  RELA                 0x0000000000000420
  RELASZ               0x00000000000000d8
  RELAENT              0x0000000000000018
  RELACOUNT            0x0000000000000003

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .note.gnu.build-id 00000024  00000000000001c8  00000000000001c8  000001c8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .gnu.hash     00000048  00000000000001f0  00000000000001f0  000001f0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .dynsym       00000150  0000000000000238  0000000000000238  00000238  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .dynstr       00000097  0000000000000388  0000000000000388  00000388  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .rela.dyn     000000d8  0000000000000420  0000000000000420  00000420  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .init         00000017  00000000000004f8  00000000000004f8  000004f8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  6 .plt          00000010  0000000000000510  0000000000000510  00000510  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  7 .plt.got      00000008  0000000000000520  0000000000000520  00000520  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  8 .text         00000139  0000000000000530  0000000000000530  00000530  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  9 .fini         00000009  000000000000066c  000000000000066c  0000066c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .eh_frame_hdr 0000002c  0000000000000678  0000000000000678  00000678  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 11 .eh_frame     00000088  00000000000006a8  00000000000006a8  000006a8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 12 .init_array   00000008  0000000000200e70  0000000000200e70  00000e70  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 13 .fini_array   00000008  0000000000200e78  0000000000200e78  00000e78  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 14 .dynamic      00000150  0000000000200e80  0000000000200e80  00000e80  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 15 .got          00000030  0000000000200fd0  0000000000200fd0  00000fd0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 16 .got.plt      00000018  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 17 .data         00000008  0000000000201018  0000000000201018  00001018  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .bss          00000010  0000000000201020  0000000000201020  00001020  2**2
                  ALLOC
 19 .comment      00000029  0000000000000000  0000000000000000  00001020  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
00000000000001c8 l    d  .note.gnu.build-id	0000000000000000 .note.gnu.build-id
00000000000001f0 l    d  .gnu.hash	0000000000000000 .gnu.hash
0000000000000238 l    d  .dynsym	0000000000000000 .dynsym
0000000000000388 l    d  .dynstr	0000000000000000 .dynstr
0000000000000420 l    d  .rela.dyn	0000000000000000 .rela.dyn
00000000000004f8 l    d  .init	0000000000000000 .init
0000000000000510 l    d  .plt	0000000000000000 .plt
0000000000000520 l    d  .plt.got	0000000000000000 .plt.got
0000000000000530 l    d  .text	0000000000000000 .text
000000000000066c l    d  .fini	0000000000000000 .fini
0000000000000678 l    d  .eh_frame_hdr	0000000000000000 .eh_frame_hdr
00000000000006a8 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000200e70 l    d  .init_array	0000000000000000 .init_array
0000000000200e78 l    d  .fini_array	0000000000000000 .fini_array
0000000000200e80 l    d  .dynamic	0000000000000000 .dynamic
0000000000200fd0 l    d  .got	0000000000000000 .got
0000000000201000 l    d  .got.plt	0000000000000000 .got.plt
0000000000201018 l    d  .data	0000000000000000 .data
0000000000201020 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 l    df *ABS*	0000000000000000 crtstuff.c
0000000000000530 l     F .text	0000000000000000 deregister_tm_clones
0000000000000570 l     F .text	0000000000000000 register_tm_clones
00000000000005c0 l     F .text	0000000000000000 __do_global_dtors_aux
0000000000201020 l     O .bss	0000000000000001 completed.7698
0000000000200e78 l     O .fini_array	0000000000000000 __do_global_dtors_aux_fini_array_entry
0000000000000600 l     F .text	0000000000000000 frame_dummy
0000000000200e70 l     O .init_array	0000000000000000 __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000 addvec.c
0000000000000000 l    df *ABS*	0000000000000000 multvec.c
0000000000000000 l    df *ABS*	0000000000000000 crtstuff.c
000000000000072c l     O .eh_frame	0000000000000000 __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000 
0000000000200e80 l     O .dynamic	0000000000000000 _DYNAMIC
0000000000201020 l     O .data	0000000000000000 __TMC_END__
0000000000201018 l     O .data	0000000000000000 __dso_handle
0000000000000678 l       .eh_frame_hdr	0000000000000000 __GNU_EH_FRAME_HDR
0000000000201000 l     O .got.plt	0000000000000000 _GLOBAL_OFFSET_TABLE_
000000000000060a g     F .text	000000000000002f addvec
0000000000000000  w      *UND*	0000000000000000 __cxa_finalize
0000000000201028 g     O .bss	0000000000000004 multcnt
00000000000004f8 g     F .init	0000000000000000 _init
0000000000201024 g     O .bss	0000000000000004 addcnt
0000000000000000  w      *UND*	0000000000000000 _ITM_registerTMCloneTable
0000000000000000  w      *UND*	0000000000000000 _ITM_deregisterTMCloneTable
0000000000201020 g       .bss	0000000000000000 __bss_start
0000000000000639 g     F .text	0000000000000030 multvec
000000000000066c g     F .fini	0000000000000000 _fini
0000000000201020 g       .data	0000000000000000 _edata
0000000000201030 g       .bss	0000000000000000 _end
0000000000000000  w      *UND*	0000000000000000 __gmon_start__



Disassembly of section .init:

00000000000004f8 <_init>:
 4f8:	48 83 ec 08          	sub    $0x8,%rsp
 4fc:	48 8b 05 f5 0a 20 00 	mov    0x200af5(%rip),%rax        # 200ff8 <__gmon_start__>
 503:	48 85 c0             	test   %rax,%rax
 506:	74 02                	je     50a <_init+0x12>
 508:	ff d0                	callq  *%rax
 50a:	48 83 c4 08          	add    $0x8,%rsp
 50e:	c3                   	retq   

Disassembly of section .plt:

0000000000000510 <.plt>:
 510:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 516:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 51c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000000520 <__cxa_finalize@plt>:
 520:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 200fd0 <__cxa_finalize>
 526:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000530 <deregister_tm_clones>:
 530:	48 8d 3d e9 0a 20 00 	lea    0x200ae9(%rip),%rdi        # 201020 <_edata>
 537:	55                   	push   %rbp
 538:	48 8d 05 e1 0a 20 00 	lea    0x200ae1(%rip),%rax        # 201020 <_edata>
 53f:	48 39 f8             	cmp    %rdi,%rax
 542:	48 89 e5             	mov    %rsp,%rbp
 545:	74 19                	je     560 <deregister_tm_clones+0x30>
 547:	48 8b 05 a2 0a 20 00 	mov    0x200aa2(%rip),%rax        # 200ff0 <_ITM_deregisterTMCloneTable>
 54e:	48 85 c0             	test   %rax,%rax
 551:	74 0d                	je     560 <deregister_tm_clones+0x30>
 553:	5d                   	pop    %rbp
 554:	ff e0                	jmpq   *%rax
 556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 55d:	00 00 00 
 560:	5d                   	pop    %rbp
 561:	c3                   	retq   
 562:	0f 1f 40 00          	nopl   0x0(%rax)
 566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 56d:	00 00 00 

0000000000000570 <register_tm_clones>:
 570:	48 8d 3d a9 0a 20 00 	lea    0x200aa9(%rip),%rdi        # 201020 <_edata>
 577:	48 8d 35 a2 0a 20 00 	lea    0x200aa2(%rip),%rsi        # 201020 <_edata>
 57e:	55                   	push   %rbp
 57f:	48 29 fe             	sub    %rdi,%rsi
 582:	48 89 e5             	mov    %rsp,%rbp
 585:	48 c1 fe 03          	sar    $0x3,%rsi
 589:	48 89 f0             	mov    %rsi,%rax
 58c:	48 c1 e8 3f          	shr    $0x3f,%rax
 590:	48 01 c6             	add    %rax,%rsi
 593:	48 d1 fe             	sar    %rsi
 596:	74 18                	je     5b0 <register_tm_clones+0x40>
 598:	48 8b 05 49 0a 20 00 	mov    0x200a49(%rip),%rax        # 200fe8 <_ITM_registerTMCloneTable>
 59f:	48 85 c0             	test   %rax,%rax
 5a2:	74 0c                	je     5b0 <register_tm_clones+0x40>
 5a4:	5d                   	pop    %rbp
 5a5:	ff e0                	jmpq   *%rax
 5a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 5ae:	00 00 
 5b0:	5d                   	pop    %rbp
 5b1:	c3                   	retq   
 5b2:	0f 1f 40 00          	nopl   0x0(%rax)
 5b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5bd:	00 00 00 

00000000000005c0 <__do_global_dtors_aux>:
 5c0:	80 3d 59 0a 20 00 00 	cmpb   $0x0,0x200a59(%rip)        # 201020 <_edata>
 5c7:	75 2f                	jne    5f8 <__do_global_dtors_aux+0x38>
 5c9:	48 83 3d ff 09 20 00 	cmpq   $0x0,0x2009ff(%rip)        # 200fd0 <__cxa_finalize>
 5d0:	00 
 5d1:	55                   	push   %rbp
 5d2:	48 89 e5             	mov    %rsp,%rbp
 5d5:	74 0c                	je     5e3 <__do_global_dtors_aux+0x23>
 5d7:	48 8b 3d 3a 0a 20 00 	mov    0x200a3a(%rip),%rdi        # 201018 <__dso_handle>
 5de:	e8 3d ff ff ff       	callq  520 <__cxa_finalize@plt>
 5e3:	e8 48 ff ff ff       	callq  530 <deregister_tm_clones>
 5e8:	c6 05 31 0a 20 00 01 	movb   $0x1,0x200a31(%rip)        # 201020 <_edata>
 5ef:	5d                   	pop    %rbp
 5f0:	c3                   	retq   
 5f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5f8:	f3 c3                	repz retq 
 5fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000600 <frame_dummy>:
 600:	55                   	push   %rbp
 601:	48 89 e5             	mov    %rsp,%rbp
 604:	5d                   	pop    %rbp
 605:	e9 66 ff ff ff       	jmpq   570 <register_tm_clones>

000000000000060a <addvec>:
 60a:	4c 8b 05 cf 09 20 00 	mov    0x2009cf(%rip),%r8        # 200fe0 <addcnt-0x44>
 611:	41 8b 00             	mov    (%r8),%eax
 614:	83 c0 01             	add    $0x1,%eax
 617:	41 89 00             	mov    %eax,(%r8)
 61a:	b8 00 00 00 00       	mov    $0x0,%eax
 61f:	eb 12                	jmp    633 <addvec+0x29>
 621:	4c 63 c0             	movslq %eax,%r8
 624:	46 8b 0c 86          	mov    (%rsi,%r8,4),%r9d
 628:	46 03 0c 87          	add    (%rdi,%r8,4),%r9d
 62c:	46 89 0c 82          	mov    %r9d,(%rdx,%r8,4)
 630:	83 c0 01             	add    $0x1,%eax
 633:	39 c8                	cmp    %ecx,%eax
 635:	7c ea                	jl     621 <addvec+0x17>
 637:	f3 c3                	repz retq 

0000000000000639 <multvec>:
 639:	4c 8b 05 98 09 20 00 	mov    0x200998(%rip),%r8        # 200fd8 <multcnt-0x50>
 640:	41 8b 00             	mov    (%r8),%eax
 643:	83 c0 01             	add    $0x1,%eax
 646:	41 89 00             	mov    %eax,(%r8)
 649:	b8 00 00 00 00       	mov    $0x0,%eax
 64e:	eb 13                	jmp    663 <multvec+0x2a>
 650:	4c 63 c0             	movslq %eax,%r8
 653:	46 8b 0c 86          	mov    (%rsi,%r8,4),%r9d
 657:	46 0f af 0c 87       	imul   (%rdi,%r8,4),%r9d
 65c:	46 89 0c 82          	mov    %r9d,(%rdx,%r8,4)
 660:	83 c0 01             	add    $0x1,%eax
 663:	39 c8                	cmp    %ecx,%eax
 665:	7c e9                	jl     650 <multvec+0x17>
 667:	f3 c3                	repz retq 

Disassembly of section .fini:

000000000000066c <_fini>:
 66c:	48 83 ec 08          	sub    $0x8,%rsp
 670:	48 83 c4 08          	add    $0x8,%rsp
 674:	c3                   	retq   
