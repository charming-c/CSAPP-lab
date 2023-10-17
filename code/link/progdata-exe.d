
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
 22 .data         00000018  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201000  w      .data	0000000000000000              data_start
0000000000201010 g     O .data	0000000000000008              array
0000000000201018 g       .data	0000000000000000              _edata
0000000000201000 g       .data	0000000000000000              __data_start
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000201018 g     O .data	0000000000000000              .hidden __TMC_END__



Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10 20 00 00 00 00 00                             .. .....

0000000000201010 <array>:
  201010:	01 00 00 00 02 00 00 00                             ........
