	.file	"Q7.c"
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
	sub	rsp, 144
	.seh_stackalloc	144
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	ecx, 24
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	QWORD PTR -48[rbp+rax*8], rdx
	mov	ecx, 24
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	QWORD PTR -80[rbp+rax*8], rdx
	mov	ecx, 24
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	QWORD PTR -112[rbp+rax*8], rdx
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -4[rbp], 2
	jle	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
.L7:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rax, QWORD PTR -48[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rax, QWORD PTR -80[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rax, QWORD PTR -112[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -8[rbp], 1
.L5:
	cmp	DWORD PTR -8[rbp], 2
	jle	.L6
	add	DWORD PTR -4[rbp], 1
.L4:
	cmp	DWORD PTR -4[rbp], 2
	jle	.L7
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
.L13:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
.L12:
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rax, QWORD PTR -48[rbp+rax*8]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	rax, QWORD PTR -80[rbp+rax*8]
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	sal	rcx, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	imul	eax, edx
	add	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L10:
	cmp	DWORD PTR -12[rbp], 2
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rax, QWORD PTR -112[rbp+rax*8]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -8[rbp], 1
.L9:
	cmp	DWORD PTR -8[rbp], 2
	jle	.L12
	add	DWORD PTR -4[rbp], 1
.L8:
	cmp	DWORD PTR -4[rbp], 2
	jle	.L13
	mov	eax, 0
	add	rsp, 144
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
