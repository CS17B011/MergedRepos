	.file	"Q2.c"
	.intel_syntax noprefix
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp               ;stack[top-0] <-- [rbp]
	.seh_pushreg	rbp
	push	rsi               ;stack[top-1] <-- [rsi]
	.seh_pushreg	rsi
	push	rbx               ;stack[top-2] <-- [rbx]
	.seh_pushreg	rbx
	mov	rbp, rsp               ; rbp <-- [ rsp ]
	.seh_setframe	rbp, 0
	sub	rsp, 32               ; rsp <-- [rsp] - 32
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	mov	ebx, 9               ; ebx <-- 9
	mov	esi, 25               ; esi <-- 25
	add	ebx, esi               ; ebx <-- [ebx] + [ esi] ; ebx <-- 34
	mov	eax, ebx               ; eax <-- [ ebx ] ; eax <-- 9
	sub	eax, esi               ; eax <-- [eax] - [ esi] ; eax <-- -16 
	mov	esi, eax               ; esi <-- [ eax ] ; esi <-- 9
	sub	ebx, esi               ; ebx <-- [ebx] - [ esi] ; ebx <-- 25  
	mov	eax, 0               ; eax <-- 0
	add	rsp, 32               ; rsp <-- [rsp] + 32 
	pop	rbx               ; rbx <-- stack[top-2]
	pop	rsi               ; rsi <-- stack[top-1]
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
