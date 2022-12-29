
main:

	add $sp,$sp,-8
	sw $t0,4($sp)
	sw $t1,0($sp)

	li $t0,15
	li $t1,8
	add $t0,$t0,$t1
	sub $t1,$t0,$t1
	sub $t0,$t0,$t1

	add $sp,$sp,8	
