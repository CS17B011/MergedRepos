	.file	"Q4.c"
	.intel_syntax noprefix
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp               ;stack[top-0] <-- [rbp]
	.seh_pushreg	rbp
	mov	rbp, rsp               ; rbp <-- [ rsp ]
	.seh_setframe	rbp, 0
	add	rsp, -128               ; rsp <-- [rsp] - 128
	.seh_stackalloc	128
	.seh_endprologue
	call	__main
	mov	DWORD PTR -48[rbp], 1               ; -48[rbp] <-- 1
	mov	DWORD PTR -44[rbp], 2               ; -44[rbp] <-- 2
	mov	DWORD PTR -40[rbp], 3               ; -40[rbp] <-- 3
	mov	DWORD PTR -36[rbp], 4               ; -36[rbp] <-- 4
	mov	DWORD PTR -32[rbp], 5               ; -32[rbp] <-- 5
	mov	DWORD PTR -28[rbp], 6               ; -28[rbp] <-- 6
	mov	DWORD PTR -24[rbp], 7               ; -24[rbp] <-- 7
	mov	DWORD PTR -20[rbp], 8               ; -20[rbp] <-- 8
	mov	DWORD PTR -16[rbp], 9               ; -16[rbp] <-- 9
	mov	DWORD PTR -12[rbp], 10               ; -12[rbp] <-- 10
	mov	DWORD PTR -96[rbp], 11               ; -96[rbp] <-- 11
	mov	DWORD PTR -92[rbp], 12               ; -92[rbp] <-- 12
	mov	DWORD PTR -88[rbp], 13               ; -88[rbp] <-- 13
	mov	DWORD PTR -84[rbp], 14               ; -84[rbp] <-- 14
	mov	DWORD PTR -80[rbp], 15               ; -80[rbp] <-- 15
	mov	DWORD PTR -76[rbp], 16               ; -76[rbp] <-- 16
	mov	DWORD PTR -72[rbp], 17               ; -72[rbp] <-- 17
	mov	DWORD PTR -68[rbp], 18               ; -68[rbp] <-- 18
	mov	DWORD PTR -64[rbp], 19               ; -64[rbp] <-- 19
	mov	DWORD PTR -60[rbp], 20               ; -60[rbp] <-- 20
	mov	DWORD PTR -4[rbp], 0               ; -4[rbp] <-- 0
	jmp	.L2									;Jump to L2
.L3:
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- -48[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax               ; -8[rbp] <-- eax
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	edx, DWORD PTR -96[rbp+rax*4]               ; edx <-- -96[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	DWORD PTR -48[rbp+rax*4], edx               ; -48[rbp+rax*4] <-- edx
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	edx, DWORD PTR -8[rbp]               ; edx <-- -8[rbp]
	mov	DWORD PTR -96[rbp+rax*4], edx               ; -96[rbp+rax*4] <-- edx
	add	DWORD PTR -4[rbp], 1               ; -4[rbp] <-- [-4[rbp]] + 1
.L2:
	cmp	DWORD PTR -4[rbp], 9		;Compare -4[rbp] to 9
	jle	.L3							; Jump to L3 if Less than equal
	mov	eax, 0               ; eax <-- 0
	sub	rsp, -128               ; rsp <-- [rsp] - (-128) 
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
