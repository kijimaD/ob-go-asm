# ob-go-asm

Org-Babel support for dumping Go assembly code.

## Installation

```el
(use-package ob-go-asm
  :straight (:host github :repo "kijimaD/ob-go-asm"))
```

## Usage

```
#+begin_src go-asm
  package main
  func main() {
	for i := 1; i <= 10; i++ {
		print(i)
	}
  }
#+end_src
```

↓ evaluate(C-c)

```
#+RESULTS:
#+begin_results
# command-line-arguments
main.add STEXT nosplit size=71 args=0x8 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (/tmp/babel-ZDNznW/XkIsxn.go:2)	TEXT	main.add(SB), NOSPLIT|ABIInternal, $16-8
	0x0000 00000 (/tmp/babel-ZDNznW/XkIsxn.go:2)	SUBQ	$16, SP
	0x0004 00004 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVQ	BP, 8(SP)
	0x0009 00009 (/tmp/babel-ZDNznW/XkIsxn.go:2)	LEAQ	8(SP), BP
	0x000e 00014 (/tmp/babel-ZDNznW/XkIsxn.go:2)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/tmp/babel-ZDNznW/XkIsxn.go:2)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (/tmp/babel-ZDNznW/XkIsxn.go:2)	FUNCDATA	$5, main.add.arginfo1(SB)
	0x000e 00014 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	AX, main.a+24(SP)
	0x0012 00018 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	BX, main.b+28(SP)
	0x0016 00022 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	$0, main.~r0+4(SP)
	0x001e 00030 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVB	$0, main.~r1+3(SP)
	0x0023 00035 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	main.a+24(SP), CX
	0x0027 00039 (/tmp/babel-ZDNznW/XkIsxn.go:2)	ADDL	main.b+28(SP), CX
	0x002b 00043 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	CX, main.~r0+4(SP)
	0x002f 00047 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVB	$1, main.~r1+3(SP)
	0x0034 00052 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	main.~r0+4(SP), AX
	0x0038 00056 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVL	$1, BX
	0x003d 00061 (/tmp/babel-ZDNznW/XkIsxn.go:2)	MOVQ	8(SP), BP
	0x0042 00066 (/tmp/babel-ZDNznW/XkIsxn.go:2)	ADDQ	$16, SP
	0x0046 00070 (/tmp/babel-ZDNznW/XkIsxn.go:2)	RET
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 89 44  H...H.l$.H.l$..D
	0x0010 24 18 89 5c 24 1c c7 44 24 04 00 00 00 00 c6 44  $..\$..D$......D
	0x0020 24 03 00 8b 4c 24 18 03 4c 24 1c 89 4c 24 04 c6  $...L$..L$..L$..
	0x0030 44 24 03 01 8b 44 24 04 bb 01 00 00 00 48 8b 6c  D$...D$......H.l
	0x0040 24 08 48 83 c4 10 c3                             $.H....
main.main STEXT size=54 args=0x0 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (/tmp/babel-ZDNznW/XkIsxn.go:3)	TEXT	main.main(SB), ABIInternal, $16-0
	0x0000 00000 (/tmp/babel-ZDNznW/XkIsxn.go:3)	CMPQ	SP, 16(R14)
	0x0004 00004 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$0, $-2
	0x0004 00004 (/tmp/babel-ZDNznW/XkIsxn.go:3)	JLS	47
	0x0006 00006 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$0, $-1
	0x0006 00006 (/tmp/babel-ZDNznW/XkIsxn.go:3)	SUBQ	$16, SP
	0x000a 00010 (/tmp/babel-ZDNznW/XkIsxn.go:3)	MOVQ	BP, 8(SP)
	0x000f 00015 (/tmp/babel-ZDNznW/XkIsxn.go:3)	LEAQ	8(SP), BP
	0x0014 00020 (/tmp/babel-ZDNznW/XkIsxn.go:3)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0014 00020 (/tmp/babel-ZDNznW/XkIsxn.go:3)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0014 00020 (/tmp/babel-ZDNznW/XkIsxn.go:3)	MOVL	$10, AX
	0x0019 00025 (/tmp/babel-ZDNznW/XkIsxn.go:3)	MOVL	$32, BX
	0x001e 00030 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$1, $0
	0x001e 00030 (/tmp/babel-ZDNznW/XkIsxn.go:3)	NOP
	0x0020 00032 (/tmp/babel-ZDNznW/XkIsxn.go:3)	CALL	main.add(SB)
	0x0025 00037 (/tmp/babel-ZDNznW/XkIsxn.go:3)	MOVQ	8(SP), BP
	0x002a 00042 (/tmp/babel-ZDNznW/XkIsxn.go:3)	ADDQ	$16, SP
	0x002e 00046 (/tmp/babel-ZDNznW/XkIsxn.go:3)	RET
	0x002f 00047 (/tmp/babel-ZDNznW/XkIsxn.go:3)	NOP
	0x002f 00047 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$1, $-1
	0x002f 00047 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$0, $-2
	0x002f 00047 (/tmp/babel-ZDNznW/XkIsxn.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0034 00052 (/tmp/babel-ZDNznW/XkIsxn.go:3)	PCDATA	$0, $-1
	0x0034 00052 (/tmp/babel-ZDNznW/XkIsxn.go:3)	JMP	0
	0x0000 49 3b 66 10 76 29 48 83 ec 10 48 89 6c 24 08 48  I;f.v)H...H.l$.H
	0x0010 8d 6c 24 08 b8 0a 00 00 00 bb 20 00 00 00 66 90  .l$....... ...f.
	0x0020 e8 00 00 00 00 48 8b 6c 24 08 48 83 c4 10 c3 e8  .....H.l$.H.....
	0x0030 00 00 00 00 eb ca                                ......
	rel 33+4 t=7 main.add+0
	rel 48+4 t=7 runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
main.add.arginfo1 SRODATA static dupok size=5
	0x0000 00 04 04 04 ff                                   .....
#+end_results
```
