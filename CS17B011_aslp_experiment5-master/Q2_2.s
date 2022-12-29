.text
	main:
		li $s0,7	#Dividend Q
		li $s1,-3	#Divisor M
		li $t4,1	#Sign of Q initailization as positive
		li $t5,1	#Sign of A initialization as positive
		jal setSignQ	#setting sign of Q
		j Divide		
		
	Divide:
		blt $s0,0,negativeA	#Set the sign of Remainder as negative and also make s0 positive
		blt $s1,0,makeS1Positive
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
		
		negativeA:			
			mul $s0,$s0,-1
			li $t5,-1
			j Divide
			
		setSignQ:
			srl $t6,$s0,31
			srl $t7,$s1,31
			xor $t8,$t6,$t7
			beq $t8,1,makeT4negative
			jr $ra
			
		makeS1Positive:
			mul $s1,$s1,-1
			j Divide
			
		makeT4negative:
			mul $t4,$t4,-1
			j Divide 
				
		End:
			mul $t1,$t1,$t4
			mul $t2,$t2,$t5
			li $v0,10	#End of Program
			syscall
