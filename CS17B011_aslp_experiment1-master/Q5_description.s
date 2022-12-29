	.file	"Q5.c"
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
	sub	rsp, 96               ; rsp <-- [rsp] - 96 
	.seh_stackalloc	96
	.seh_endprologue
	call	__main
	mov	DWORD PTR -64[rbp], 1               ; -64[rbp] <-- 1
	mov	DWORD PTR -60[rbp], 2               ; -60[rbp] <-- 2
	mov	DWORD PTR -56[rbp], 34               ; -56[rbp] <-- 34
	mov	DWORD PTR -52[rbp], 645               ; -52[rbp] <-- 645
	mov	DWORD PTR -48[rbp], 8               ; -48[rbp] <-- 8
	mov	DWORD PTR -44[rbp], -23               ; -44[rbp] <-- -23
	mov	DWORD PTR -40[rbp], 43               ; -40[rbp] <-- 43
	mov	DWORD PTR -36[rbp], 42               ; -36[rbp] <-- 42
	mov	DWORD PTR -32[rbp], 1               ; -32[rbp] <-- 1
	mov	DWORD PTR -28[rbp], 0               ; -28[rbp] <-- 0
	mov	eax, DWORD PTR -64[rbp]               ; eax <-- -64[rbp]
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- eax
	mov	eax, DWORD PTR -60[rbp]               ; eax <-- -60[rbp]
	mov	DWORD PTR -8[rbp], eax               ; -8[rbp] <-- eax
	mov	DWORD PTR -16[rbp], 10               ; -16[rbp] <-- 10
	mov	DWORD PTR -12[rbp], 1               ; -12[rbp] <-- 1
	jmp	.L2									;Jump to L2
.L5:
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -64[rbp+rax*4]               ; eax <-- -64[rbp+rax*4]
	cmp	eax, DWORD PTR -4[rbp]				; Compare eax to -4[rbp]
	jge	.L3									; jump to L3 if greater or equal
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -64[rbp+rax*4]               ; eax <-- -64[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- eax
.L3:
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -64[rbp+rax*4]               ; eax <-- -64[rbp+rax*4]
	cmp	eax, DWORD PTR -8[rbp]						; Compare [eax] to -8[rbp] 
	jle	.L4											;Jump to L4 if less than or equal to
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	eax, DWORD PTR -64[rbp+rax*4]               ; eax <-- -64[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax               ; -8[rbp] <-- eax
.L4:
	add	DWORD PTR -12[rbp], 1               ; -12[rbp] <-- [-12[rbp]] + 1
.L2:
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]				;Compare [eax] to -16[rbp] 
	jl	.L5									;Jump to L5 if less than
	mov	eax, 0               ; eax <-- 0
	add	rsp, 96               ; rsp <-- [rsp] + 96 
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
