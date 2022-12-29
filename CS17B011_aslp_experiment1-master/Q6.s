	.file	"Q6.c"
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	mov	ecx, 10
	call	fib
	mov	DWORD PTR -4[rbp], eax
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	fib
	.def	fib;	.scl	2;	.type	32;	.endef
	.seh_proc	fib
fib:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	DWORD PTR -64[rbp], ecx
	cmp	DWORD PTR -64[rbp], 1
	je	.L4
	cmp	DWORD PTR -64[rbp], 2
	jne	.L5
.L4:
	mov	eax, 1
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -64[rbp]
	sub	eax, 1
	mov	ecx, eax
	call	fib
	mov	ebx, eax
	mov	eax, DWORD PTR -64[rbp]
	sub	eax, 2
	mov	ecx, eax
	call	fib
	add	eax, ebx
.L6:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
