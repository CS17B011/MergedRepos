.data
	n: .word 4
.text
	main:
		lw $a0,n
		jal fact
		move $s0,$v0
		li $v0,10
		syscall
		
	fact:
		addi $sp,$sp,-8
		sw $ra,0($sp)
		sw $a0,4($sp)
		beq $a0,0,End
		addi $a0,$a0,-1
		jal fact
		lw $a0,4($sp)
		mul $v0,$v0,$a0
		lw $ra,0($sp)
		addi $sp,$sp,8
		jr $ra		
		
	End:
		li $v0,1
		addi $sp,$sp,8
		jr $ra	