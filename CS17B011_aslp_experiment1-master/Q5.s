	.file	"Q5.c"
	.intel_syntax noprefix
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 96
	.seh_stackalloc	96
	.seh_endprologue
	call	__main
	mov	DWORD PTR -64[rbp], 1
	mov	DWORD PTR -60[rbp], 2
	mov	DWORD PTR -56[rbp], 34
	mov	DWORD PTR -52[rbp], 645
	mov	DWORD PTR -48[rbp], 8
	mov	DWORD PTR -44[rbp], -23
	mov	DWORD PTR -40[rbp], 43
	mov	DWORD PTR -36[rbp], 42
	mov	DWORD PTR -32[rbp], 1
	mov	DWORD PTR -28[rbp], 0
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -16[rbp], 10
	mov	DWORD PTR -12[rbp], 1
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L3
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
.L3:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
.L4:
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L5
	mov	eax, 0
	add	rsp, 96
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
