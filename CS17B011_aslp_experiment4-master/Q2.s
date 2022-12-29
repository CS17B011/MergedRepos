.data
	Num_A: .space 16
	Num_B: .space 16
	Num_Sum: .space 16
.text
	main:
		jal setNumA
		jal setNumB
		addi $t0,$zero,0	#Counter
		addi $s0,$zero,0	#Carry out
		
		loop:				
			lw $s1,Num_A($t0)	#Loading first number
			lw $s2,Num_B($t0)	#Loading second number
			addu $t2,$s1,$s0	#Adding Last Carry
			sltu $t1,$t2,$s1	#Checking for overflow condition
			sltu $t1,$t2,$s0
			move $s0,$t1		
			move $s1,$t2
			addu $s3,$s1,$s2	#Adding Two Numbers
			sw $s3,Num_Sum($t0)	#Storing Result back to RAM
			sltu $t1,$s3,$s1
			sltu $t1,$s3,$s2			
			move $s0,$t1
			addi $t0,$t0,4
			blt $t0,12,loop
			j end
					
		setNumA:			#Setting First Number
			addi $t1,$zero,0
			addiu $s1,$zero,0x1
			sw $s1,Num_A($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_A($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_A($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_A($t1)
			jr $ra
			
		setNumB:			#Setting Second Number
			addi $t1,$zero,0
			addiu $s1,$zero,0x1
			sw $s1,Num_B($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_B($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_B($t1)
			addi $t1,$t1,4
			addiu $s1,$zero,0x1
			sw $s1,Num_B($t1)
			jr $ra
			
		end:				
			lw $s1,Num_A($t0)	#Loading first number
			lw $s2,Num_B($t0)	#Loading second number
			add $s1,$s1,$s0		#Adding Last Carry
			add $s3,$s1,$s2		#Adding Two Numbers
			sw $s3,Num_Sum($t0)	#Storing Result back to RAM
			li $v0,10		#End of Program
			syscall
