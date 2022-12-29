.data
	arr_A: .space 20
	arr_B: .space 20
	arrSize: .word 5
.text
	main:
		la $a0,arr_A	#Initialising Arguments for Array A Initialisation
		lw $a1,arrSize
		li $a2,1
		jal makeArray	#Making First Array with values 1,2,3,4,5,...
		la $a0,arr_B	#Initialising Arguments for Array B Initialisation
		lw $a1,arrSize
		li $a2,6
		jal makeArray	#Initialising Second Array with values 6,7,8,9,10,...
		jal Swap	#Swapping Content of two arrays
		li $v0,10	#End Of Program
		syscall 
	
	makeArray:
		addi $t3,$zero,0	#t3 will work as index counter
		la $t0,($a0)		#t0 has the base address
		move $t1,$a1		#t1 has the size of array
		move $t2,$a2		#t2 has initial sequence value
		add $s0,$zero,$t2	
		sll $t1,$t1,2
		loop:
			add $t4,$t0,$t3
			sw $s0,($t4)	#Storing Values
			addi $s0,$s0,1	
			addi $t3,$t3,4	#Index++
			blt $t3,$t1,loop
		jr $ra
		
	Swap:
		la $t0,arr_A		#t0 has base address of first array
		la $t1,arr_B		#t1 has base address of second array
		lw $t2,arrSize		#t2 has size of array
		addi $t3,$zero,0	#t3 is a counter variable
		addi $s0,$zero,0
		sll $t2,$t2,2
		loopswap:
			add $t4,$t0,$t3
			add $t5,$t1,$t3
			lw $s0,($t4)	#Loading both Words
			lw $s1,($t5)
			sw $s0,($t5)	#Swapping both Words
			sw $s1,($t4)
			addi $t3,$t3,4	#Index++
			blt $t3,$t2,loopswap
		jr $ra			