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
main.main STEXT size=87 args=0x0 locals=0x18 funcid=0x0 align=0x0
	0x0000 00000 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	TEXT	main.main(SB), ABIInternal, $24-0
	0x0000 00000 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	CMPQ	SP, 16(R14)
	0x0004 00004 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	PCDATA	$0, $-2
	0x0004 00004 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	JLS	80
	0x0006 00006 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	PCDATA	$0, $-1
	0x0006 00006 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	SUBQ	$24, SP
	0x000a 00010 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	MOVQ	BP, 16(SP)
	0x000f 00015 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	LEAQ	16(SP), BP
	0x0014 00020 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0014 00020 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0014 00020 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	MOVQ	$1, main.i+8(SP)
	0x001d 00029 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	JMP	31
	0x001f 00031 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	CMPQ	main.i+8(SP), $10
	0x0025 00037 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	JLE	41
	0x0027 00039 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	JMP	70
	0x0029 00041 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	PCDATA	$1, $0
	0x0029 00041 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	CALL	runtime.printlock(SB)
	0x002e 00046 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	MOVQ	main.i+8(SP), AX
	0x0033 00051 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	CALL	runtime.printint(SB)
	0x0038 00056 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	CALL	runtime.printunlock(SB)
	0x003d 00061 (/tmp/babel-ZDNznW/go-src-O01Auz.go:4)	JMP	63
	0x003f 00063 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	INCQ	main.i+8(SP)
	0x0044 00068 (/tmp/babel-ZDNznW/go-src-O01Auz.go:3)	JMP	31
	0x0046 00070 (/tmp/babel-ZDNznW/go-src-O01Auz.go:6)	PCDATA	$1, $-1
	0x0046 00070 (/tmp/babel-ZDNznW/go-src-O01Auz.go:6)	MOVQ	16(SP), BP
	0x004b 00075 (/tmp/babel-ZDNznW/go-src-O01Auz.go:6)	ADDQ	$24, SP
	0x004f 00079 (/tmp/babel-ZDNznW/go-src-O01Auz.go:6)	RET
	0x0050 00080 (/tmp/babel-ZDNznW/go-src-O01Auz.go:6)	NOP
	0x0050 00080 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	PCDATA	$1, $-1
	0x0050 00080 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	PCDATA	$0, $-2
	0x0050 00080 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	CALL	runtime.morestack_noctxt(SB)
	0x0055 00085 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	PCDATA	$0, $-1
	0x0055 00085 (/tmp/babel-ZDNznW/go-src-O01Auz.go:2)	JMP	0
	0x0000 49 3b 66 10 76 4a 48 83 ec 18 48 89 6c 24 10 48  I;f.vJH...H.l$.H
	0x0010 8d 6c 24 10 48 c7 44 24 08 01 00 00 00 eb 00 48  .l$.H.D$.......H
	0x0020 83 7c 24 08 0a 7e 02 eb 1d e8 00 00 00 00 48 8b  .|$..~........H.
	0x0030 44 24 08 e8 00 00 00 00 e8 00 00 00 00 eb 00 48  D$.............H
	0x0040 ff 44 24 08 eb d9 48 8b 6c 24 10 48 83 c4 18 c3  .D$...H.l$.H....
	0x0050 e8 00 00 00 00 eb a9                             .......
	rel 42+4 t=7 runtime.printlock+0
	rel 52+4 t=7 runtime.printint+0
	rel 57+4 t=7 runtime.printunlock+0
	rel 81+4 t=7 runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
#+end_results
```
