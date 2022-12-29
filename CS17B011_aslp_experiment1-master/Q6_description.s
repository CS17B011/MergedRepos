	.file	"Q6.c"
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
	sub	rsp, 48               ; rsp <-- [rsp] - 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	mov	ecx, 10               ; ecx <-- 10
	call	fib
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- eax
	mov	eax, 0               ; eax <-- 0
	add	rsp, 48               ; rsp <-- [rsp] + 48
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.globl	fib
	.def	fib;	.scl	2;	.type	32;	.endef
	.seh_proc	fib
fib:
	push	rbp               ;stack[top-0] <-- [rbp]
	.seh_pushreg	rbp
	push	rbx               ;stack[top-1] <-- [rbx]
	.seh_pushreg	rbx
	sub	rsp, 40               ; rsp <-- [rsp] - 40
	.seh_stackalloc	40
	lea	rbp, 128[rsp]               ; rbp <--  128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	DWORD PTR -64[rbp], ecx               ; -64[rbp] <-- ecx
	cmp	DWORD PTR -64[rbp], 1				; Compare -64[rbp] to 1
	je	.L4									; Jump to L4 if equal to 
	cmp	DWORD PTR -64[rbp], 2				; Compare -64[rbp] to 2
	jne	.L5									; Jump to L5 if not equal to 
.L4:
	mov	eax, 1               ; eax <-- 1
	jmp	.L6					; Jump to L6 
.L5:
	mov	eax, DWORD PTR -64[rbp]               ; eax <-- -64[rbp]
	sub	eax, 1               ; eax <-- [eax] - 1
	mov	ecx, eax               ; ecx <-- [ eax ]
	call	fib
	mov	ebx, eax               ; ebx <-- [ eax ]
	mov	eax, DWORD PTR -64[rbp]               ; eax <-- -64[rbp]
	sub	eax, 2               ; eax <-- [eax] - 2
	mov	ecx, eax               ; ecx <-- [ eax ]
	call	fib
	add	eax, ebx               ; eax <-- [eax] + [ ebx]
.L6:
	add	rsp, 40               ; rsp <-- [rsp] + 40
	pop	rbx               ; rbx <-- stack[top-1]
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
