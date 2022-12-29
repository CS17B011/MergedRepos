	.file	"Q1.c"
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
	sub	rsp, 32               ; rsp <-- [rsp] - 32 
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	mov	eax, 0               ; eax <-- 0
	add	rsp, 32               ; rsp <-- [rsp] + 32 ; 
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
