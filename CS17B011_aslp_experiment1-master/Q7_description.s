	.file	"Q7.c"
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
	sub	rsp, 144               ; rsp <-- [rsp] - 144
	.seh_stackalloc	144
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0               ; -4[rbp] <-- 0
	jmp	.L2                            ; Jump to L2
.L3:
	mov	ecx, 24               ; ecx <-- 24
	call	malloc
	mov	rdx, rax               ; rdx <-- [ rax ]
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	QWORD PTR -48[rbp+rax*8], rdx               ; -48[rbp+rax*8] <-- [ rdx ]
	mov	ecx, 24               ; ecx <-- 24
	call	malloc
	mov	rdx, rax               ; rdx <-- [ rax ]
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	QWORD PTR -80[rbp+rax*8], rdx               ;-80[rbp+rax*8] <-- [ rdx ]
	mov	ecx, 24               ; ecx <-- 24
	call	malloc
	mov	rdx, rax               ; rdx <-- [ rax ]
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	QWORD PTR -112[rbp+rax*8], rdx               ;-112[rbp+rax*8] <-- [ rdx ]
	add	DWORD PTR -4[rbp], 1               ; -4[rbp] <-- [-4[rbp]] + [ 1]
.L2:
	cmp	DWORD PTR -4[rbp], 2			;Compare -4[rbp] to 2
	jle	.L3                             ;Jump to L3 if less than or qual to
	mov	DWORD PTR -4[rbp], 0               ; -4[rbp] <-- 0
	jmp	.L4								; Jump to L4
.L7:
	mov	DWORD PTR -8[rbp], 0               ; -8[rbp] <-- 0
	jmp	.L5								; Jump to L5
.L6:
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -48[rbp+rax*8]               ; rax <-- -48[rbp+rax*8] 
	mov	edx, DWORD PTR -8[rbp]               ; edx <-- -8[rbp]
	movsx	rdx, edx               ; rdx <-- [ edx ]
	sal	rdx, 2					; Shift rdx to 2
	add	rax, rdx               ; rax <-- [rax] + [ rdx]
	mov	ecx, DWORD PTR -4[rbp]               ; ecx <-- -4[rbp]
	mov	edx, DWORD PTR -8[rbp]               ; edx <-- -8[rbp]
	add	edx, ecx               ; edx <-- [edx] + [ ecx]
	mov	DWORD PTR [rax], edx               ; [rax] <-- edx
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -80[rbp+rax*8]               ; rax <-- [-80[rbp+rax*8] ]
	mov	edx, DWORD PTR -8[rbp]               ; edx <-- -8[rbp]
	movsx	rdx, edx               ; rdx <-- [ edx ]
	sal	rdx, 2					; Shit rdx to 2
	add	rdx, rax               ; rdx <-- [rdx] + [ rax]
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	sub	eax, DWORD PTR -8[rbp]               ; eax <-- [eax] - [-8[rbp]]
	mov	DWORD PTR [rdx], eax               ; [rdx] <-- eax
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -112[rbp+rax*8]               ; rax <-- [-112[rbp+rax*8] ]
	mov	edx, DWORD PTR -8[rbp]               ; edx <-- -8[rbp]
	movsx	rdx, edx               ; rdx <-- [ edx ]
	sal	rdx, 2					; Shift rdx to 2
	add	rax, rdx               ; rax <-- [rax] + [ rdx]
	mov	DWORD PTR [rax], 0               ; [rax] <-- 0
	add	DWORD PTR -8[rbp], 1              ;-8[rbp] <-- [-8[rbp]] + 1 
.L5:
	cmp	DWORD PTR -8[rbp], 2		; Compare -8[rbp] to 2
	jle	.L6							; jump to L6 if less than or equal to
	add	DWORD PTR -4[rbp], 1        ; -4[rbp] <-- -4[rbp] + 1
.L4:
	cmp	DWORD PTR -4[rbp], 2		; Compare -4[rbp] to 2
	jle	.L7							; jump to L7 if less than or equal to
	mov	DWORD PTR -4[rbp], 0        ; -4[rbp] <-- 0
	jmp	.L8							; jump to L8
.L13:
	mov	DWORD PTR -8[rbp], 0               ; -8[rbp] <-- 0
	jmp	.L9							; jump to L9
.L12:
	mov	DWORD PTR -16[rbp], 0               ; -16[rbp] <-- 0
	mov	DWORD PTR -12[rbp], 0               ; -12[rbp] <-- 0
	jmp	.L10						; jump to L10
.L11:
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -48[rbp+rax*8]               ; rax <-- -48[rbp+rax*8]
	mov	edx, DWORD PTR -12[rbp]               ; edx <-- -12[rbp]
	movsx	rdx, edx               ; rdx <-- [ edx ]
	sal	rdx, 2					; Shift rdx to 2
	add	rax, rdx               ; rax <-- [rax] + [ rdx]
	mov	edx, DWORD PTR [rax]               ; edx <-- [rax]
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- -12[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -80[rbp+rax*8]               ; rax <-- [-80[rbp+rax*8] ]
	mov	ecx, DWORD PTR -8[rbp]               ; ecx <-- -8[rbp]
	movsx	rcx, ecx               ; rcx <-- [ ecx ]
	sal	rcx, 2					; Shift rcx to 2
	add	rax, rcx               ; rax <-- [rax] + [ rcx]
	mov	eax, DWORD PTR [rax]               ; eax <-- [rax]
	imul	eax, edx               ; eax <-- [eax] * [ edx]
	add	DWORD PTR -16[rbp], eax         ; -16[rbp] <-- -16[rbp] + [ eax]
	add	DWORD PTR -12[rbp], 1               ;-12[rbp] <-- -12[rbp] + 1
.L10:
	cmp	DWORD PTR -12[rbp], 2	;Compare -12[rbp] to 2
	jle	.L11					; Jump to L11 if less than or equal to
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- -4[rbp]
	cdqe               ; Convert byte to word/word to double word/double word to quad word
	mov	rax, QWORD PTR -112[rbp+rax*8]               ; rax <-- [ -112[rbp+rax*8] ]
	mov	edx, DWORD PTR -8[rbp]               ; PT <-- -8[rbp]
	movsx	rdx, edx               ; rdx <-- [ edx ]
	sal	rdx, 2					; Shift rdx to 2
	add	rdx, rax               ; rdx <-- [rdx] + [ rax] 
	mov	eax, DWORD PTR -16[rbp]               ; eax <-- -16[rbp]
	mov	DWORD PTR [rdx], eax               ; [rdx] <-- eax
	add	DWORD PTR -8[rbp], 1               ; -8[rbp] <-- [-8[rbp]] + 1
.L9:
	cmp	DWORD PTR -8[rbp], 2			; Compare -8[rbp] to 2
	jle	.L12							; Jump to L12 if less than or equal to
	add	DWORD PTR -4[rbp], 1            ; -4[rbp] <-- [-4[rbp]] + 1
.L8:
	cmp	DWORD PTR -4[rbp], 2			; Compare -4[rbp] to 2
	jle	.L13							; Jump to L13 if less than or equal to
	mov	eax, 0               ; eax <-- 0
	add	rsp, 144               ; rsp <-- [rsp] + 144
	pop	rbp               ; rbp <-- stack[top-0]
	ret               ; return
	.seh_endproc
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
