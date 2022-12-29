main:
	
	addi $sp,$sp,-12
	lw $t0,0($sp)
	lw $t1,4($sp)
	lw $t2,8($sp)

	li $t0,0xAB
	li $t1,0xCD
	li $t2,0

	and $t2,$t0,$t1
	or $t2,$t0,$t1
	xor $t2,$t0,$t1
	not $t2,$t2
	and $t2,$t0,$t1

#AND MASKING of 2nd word in t0 and t1 from right

	andi $t2,$t0,0xF0
	andi $t2,$t1,0xF0

#OR MASKING of 2nd word in t0 and t1 from right

	ori $t2,$t0,0x0F
	ori $t2,$t1,0x0F	

#Reset to zero with XOR

	xor $t0,$t0,$t0
	xor $t1,$t1,$t1

#Again Loading..

	li $t0,0xAB
	li $t1,0xCD
	li $t2,0

#1s Complement

	xori $t2,$t0,0xFF
	xori $t2,$t1,0xFF

#2s Complement

	li $t2,-1
	mul $t0,$t0,$t2
	mul $t1,$t1,$t2		

	addi $sp,$sp,12