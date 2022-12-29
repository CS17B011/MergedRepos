.data					#Multiplication of two 32 bit number will result in one carry register and two 32 bit register
	Multiplicand_M:	.word 23  
	Multiplier_Q: .word 12
	Answer_A: .space 8
	Cout: .space 1
.text
	main:
		addi $t0,$zero,0	#Counter for Multiplication Process
		addi $s0,$zero,0	#Carry Register
		addi $s1,$zero,0	#First Register
		addi $s2,$zero,0	#Second Regiter
		lw $s3,Multiplier_Q	#Multiplier
		addi $t1,$zero,0	#Temporary Sum Register and also if condition checker
		loop:
			and $t1,$s3,1
			srl $s3,$s3,1
			beq $t1,1,addAndShift
			beq $t1,0,Shift
			
		addAndShift:
			addu $t1,$s1,$zero		#Storing s1 before adding for Carry Out condition
			lw $s4,Multiplicand_M
			addu $s1,$s1,$s4
			sltu $t2,$s1,$t1		#Checking For Carry Out Condition
			sltu $s0,$s1,$s4
			or $s0,$s0,$t2			#Setting Carry out if the sum is less than any of one number or both
			b Shift				#Shift
			
		Shift:
			li $t4,0
			andi $t4,$s1,1			#Last bit of s1
			sll $t4,$t4,31			#Making it as first bit
			srl $s2,$s2,1			#Right Shifting by one
			or $s2,$s2,$t4
			srl $s1,$s1,1			#Right Shifting by one
			add $t4,$s0,$zero		#Storing Cout
			sll $t4,$t4,31			#Making it as first bit
			or $s1,$s1,$t4			#Storing its first carry		
			addi $t0,$t0,1			#Counter++
			blt $t0,32,loop			
			j end
			
		end:
			li $t0,0			#Storing Result Back to RAM 
			sw $s2,Answer_A($t0)
			addi $t0,$zero,4
			sw $s1,Answer_A($t0)
			sw $s0,Cout
			li $v0,10	#End Of Program
			syscall
