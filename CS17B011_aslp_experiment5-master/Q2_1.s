.text
	main:
		li $s0,7	#Dividend Q
		li $s1,3	#Divisor M
		j Divide		
		
	Divide:
		li $t0,0	#Counter
		move $t1,$s0	#t1 is Dividend Q
		li $t2,0	#t2 is Remainder A
		
		Loop:
			srl $t3,$t1,31	#MSB of Q
			sll $t2,$t2,1	#Left shifting Remainder A << 1
			sll $t1,$t1,1	#Left shifting Quotient  Q << 1
			or $t2,$t2,$t3	#seting last bit of A
			sub $t2,$t2,$s1	# A <- A - M
			blt $t2,0,Restore
			or $t1,$t1,1
			addi $t0,$t0,1	#Counter++
			beq $t0,32,End
			j Loop
			
			Restore:
				add $t2,$t2,$s1
				addi $t0,$t0,1	#Counter++
				beq $t0,32,End
				j Loop
			
		End:
			li $v0,10	#End of Program
			syscall