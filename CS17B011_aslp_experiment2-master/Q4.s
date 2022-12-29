	.file	1 "Q4.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	isPrime
	.set	nomips16
	.set	nomicromips
	.ent	isPrime
	.type	isPrime, @function
isPrime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	lw	$3,16($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L2
	nop

	li	$2,1			# 0x1
	b	$L3
	nop

$L2:
	li	$2,2			# 0x2
	sw	$2,4($fp)
	b	$L4
	nop

$L6:
	lw	$3,16($fp)
	lw	$2,4($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L5
	nop

	move	$2,$0
	b	$L3
	nop

$L5:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$2,16($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L6
	nop

	li	$2,1			# 0x1
$L3:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	isPrime
	.size	isPrime, .-isPrime
	.align	2
	.globl	NearestPrime
	.set	nomips16
	.set	nomicromips
	.ent	NearestPrime
	.type	NearestPrime, @function
NearestPrime:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	lw	$2,48($fp)
	sw	$2,28($fp)
	sw	$0,32($fp)
	b	$L8
	nop

$L10:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L8:
	lw	$4,28($fp)
	.option	pic0
	jal	isPrime
	nop

	.option	pic2
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L9
	nop

	lw	$2,32($fp)
	slt	$2,$2,1001
	bne	$2,$0,$L10
	nop

$L9:
	lw	$2,48($fp)
	sw	$2,36($fp)
	sw	$0,32($fp)
	b	$L11
	nop

$L13:
	lw	$2,36($fp)
	addiu	$2,$2,-2
	sw	$2,36($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L11:
	lw	$2,36($fp)
	slt	$2,$2,3
	bne	$2,$0,$L12
	nop

	lw	$4,36($fp)
	.option	pic0
	jal	isPrime
	nop

	.option	pic2
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L12
	nop

	lw	$2,32($fp)
	slt	$2,$2,1001
	bne	$2,$0,$L13
	nop

$L12:
	lw	$3,28($fp)
	lw	$2,48($fp)
	subu	$3,$3,$2
	lw	$4,48($fp)
	lw	$2,36($fp)
	subu	$2,$4,$2
	slt	$2,$2,$3
	beq	$2,$0,$L14
	nop

	lw	$2,36($fp)
	b	$L15
	nop

$L14:
	lw	$2,28($fp)
$L15:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	NearestPrime
	.size	NearestPrime, .-NearestPrime
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	li	$2,4			# 0x4
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L17
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L17:
	beq	$2,$0,$L19
	nop

	li	$3,1			# 0x1
	beq	$2,$3,$L20
	nop

	b	$L18
	nop

$L19:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	b	$L18
	nop

$L20:
	lw	$4,28($fp)
	.option	pic0
	jal	isPrime
	nop

	.option	pic2
	bne	$2,$0,$L21
	nop

	lw	$4,28($fp)
	.option	pic0
	jal	NearestPrime
	nop

	.option	pic2
	sw	$2,28($fp)
	b	$L24
	nop

$L21:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L24:
	nop
$L18:
	move	$2,$0
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
