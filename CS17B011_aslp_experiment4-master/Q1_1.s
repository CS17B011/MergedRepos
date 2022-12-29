main:
	addi $sp,$sp,-24
	sw $v0,0($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $t4,20($sp) 
	addi $v0,$zero,0xF
	move $t2,$v0
	li $t1,0
	li $t0,0
	li $t4,0
	j loop

loop:
	blt $t4,0x20,COUNT
	bgt $t4,0x20,END
	j END

COUNT:
	andi $t3,$t2,1
	beq $t3,1,C1
	beq $t3,0,C0

C1:
	addi $t1,$t1,1
	srl $t2,$t2,1
	addi $t4,$t4,1
	j loop

C0:
	addi $t0,$t0,1
	srl $t2,$t2,1
	addi $t4,$t4,1
	j loop

END:
	addi $sp,$sp,24