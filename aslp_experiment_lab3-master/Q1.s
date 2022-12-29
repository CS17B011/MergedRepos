
main:
	add $sp,$sp,-12
	sw $t0,8($sp)
	sw $t1,4($sp)
	sw $t2,0($sp)

	li $t0,15
	li $t1,8
	add $t2,$t0,$zero
	add $t0,$t1,$zero
	add $t1,$t2,$zero

	add $sp,$sp,12