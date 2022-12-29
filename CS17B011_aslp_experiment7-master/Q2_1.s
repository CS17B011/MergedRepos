.data
	f: .space 4
	n: .word 6		
.text
	main:
		lw $a0,n	#Load word n
		jal fib
		sw $v0,f	#Storing the value
		move $s0,$v0
		li $v0,10	#End of Program
		syscall
		
	fib:			# 0 1 1 2 3 5 8 13
		addi $sp,$sp,-12
		sw $ra,0($sp)
		sw $a0,4($sp)
		li $v0,0
		beq $a0,0,End
		li $v0,1
		beq $a0,1,End
		addi $a0,$a0,-1
		jal fib
		sw $v0,8($sp)
		lw $a0,4($sp)
		addi $a0,$a0,-2
		jal fib
		lw $t0,8($sp)
		lw $ra,0($sp)
		add $v0,$v0,$t0
		addi $sp,$sp,12
		jr $ra
		
	End:
		addi $sp,$sp,12
		jr $ra