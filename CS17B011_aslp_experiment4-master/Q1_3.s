main: 
	addi $v0,$zero,0xF0F
	move $t2,$v0
	li $t0,0
	li $t1,0
	li $t3,0
	li $t4,0
	li $t5,0
	li $t6,0
	andi $t3,$t2,1
	slti $t0,$t3,1
	slt $t1,$zero,$t3
	srl $t2,$t2,1
	j loop

loop:
	blt $t5,31,COUNT
	j END

COUNT:
	andi $t4,$t2,1
	beq $t4,1,C1
	beq $t4,0,C0

C1:
	slt $t6,$t3,$t4
	add $t1,$t1,$t6
	move $t3,$t4
	srl $t2,$t2,1
	addi $t5,$t5,1
	j loop

C0:
	slt $t6,$t4,$t3
	add $t0,$t0,$t6
	move $t3,$t4
	srl $t2,$t2,1
	addi $t5,$t5,1
	j loop

END: