main:

	addi $sp,$sp,-16
	sw $t0,0($sp)
	sw $t1,4($sp)
	sw $t2,8($sp)
	sw $t3,12($sp)

	li $t0,1
	li $t1,4
	li $t2,4
	li $t3,4

	mul $t0,$t0,$t3
	mul $t0,$t0,$t3
	mul $t1,$t1,$t3
	sub $t0,$t0,$t1
	add $t0,$t0,$t2

	addi $sp,$sp,16