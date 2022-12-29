main:

	addi $sp,$sp,-8
	sw $t0,0($sp)
	sw $t1,4($sp)

	li $t0,3
	li $t1,1

	sllv $t0,$t0,$t1

	addi $sp,$sp,4