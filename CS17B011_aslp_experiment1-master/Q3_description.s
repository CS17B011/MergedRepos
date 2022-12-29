	.file	"Q3.c"
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
	sub	rsp, 80               ; rsp <-- [rsp] - 80 
	.seh_stackalloc	80
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
	mov	DWORD PTR -4[rbp], 0               ; -4[rbp] <-- 0
	jmp	.L2								;Jump to L2
.L3:
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- -48[rbp+rax*4]
	lea	edx, 1[rax]               ; edx <--  1[rax] 
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	DWORD PTR -48[rbp+rax*4], edx               ; -48[rbp+rax*4] <-- edx
	add	DWORD PTR -4[rbp], 1               ; -4[rbp] <-- [-4[rbp]] + 1
.L2:
	cmp	DWORD PTR -4[rbp], 9		; Compare -4[rbp] to 9
	jle	.L3						; Jump to L3 if less than or equal to
	mov	eax, 0               ; eax <-- 0
	add	rsp, 80               ; rsp <-- [rsp] + 80 
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
