
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
 21 .data         00000020  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201000  w      .data	0000000000000000              data_start
0000000000201020 g       .data	0000000000000000              _edata
0000000000201000 g       .data	0000000000000000              __data_start
0000000000201018 g     O .data	0000000000000008              bufp0
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000201010 g     O .data	0000000000000008              buf
0000000000201020 g     O .data	0000000000000000              .hidden __TMC_END__



Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10 20 00 00 00 00 00                             .. .....

0000000000201010 <buf>:
  201010:	01 00 00 00 02 00 00 00                             ........

0000000000201018 <bufp0>:
  201018:	10 10 20 00 00 00 00 00                             .. .....
