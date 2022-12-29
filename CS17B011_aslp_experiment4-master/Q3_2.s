.data
	arr_A: .asciiz "abcde"
	arr_B: .asciiz "vwxyz"
	arrSize: .word 5
.text
	main:
		jal Swap	#Swapping Content of two arrays
		li $v0,10	#End Of Program
		syscall 
		
	Swap:
		la $t0,arr_A		#t0 has base address of first array
		la $t1,arr_B		#t1 has base address of second array
		lw $t2,arrSize		#t2 has size of array
		addi $t3,$zero,0	#t3 is a counter variable
		addi $s0,$zero,0
		loopswap:
			add $t4,$t0,$t3
			add $t5,$t1,$t3
			lb $s0,($t4)	#Loading both Words
			lb $s1,($t5)
			sb $s0,($t5)	#Swapping both Words
			sb $s1,($t4)
			addi $t3,$t3,1	#Index++
			blt $t3,$t2,loopswap
		jr $ra			