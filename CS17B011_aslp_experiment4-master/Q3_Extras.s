.data 
	Array1: .space 20	#Make space for 5 Integers for first array
	Array2: .space 20	#make space for 5 integers for seconf array
	Arraysize: .word 20
	space: .asciiz " "
	newline: .asciiz "\n"
.text
	main:
		jal makeArray1	#Function to initialize values in first array as 1,2,3,4,5,...
		jal makeArray2	#Fuction to initialize values in second array as 6,7,8,9,10,...
		jal print1	#Print Before Swapping	
		jal print2
		addi $t0,$zero,0	#to will work as index for array
		lw $t1,Arraysize 
		swap:			#Swapping elements
			lw $s1,Array1($t0)
			lw $s2,Array2($t0)
			sw $s1,Array2($t0)
			sw $s2,Array1($t0)
			addi $t0,$t0,4
			blt $t0,$t1,swap
		jal print1		#Print After Swapping
		jal print2
		li $v0,10		#End of Porgram
		syscall
		
	makeArray1:
		addi $t0,$zero,0	#t0 will work as index for array 
		addi $s0,$zero,0
		lw $t1,Arraysize
		loop1:
			addi $s0,$s0,1
			sw $s0,Array1($t0)
			addi $t0,$t0,4
			blt $t0,$t1,loop1
		jr $ra
		
	makeArray2:
		addi $t0,$zero,0	#t0 will work as index for array 
		addi $s0,$zero,5
		lw $t1,Arraysize
		loop2:
			addi $s0,$s0,1
			sw $s0,Array2($t0)
			addi $t0,$t0,4
			blt $t0,$t1,loop2
		jr $ra
		
	print1:
		addi $t0,$zero,0
		lw $t1,Arraysize
		loopp1:
			li $v0,1
			lw $a0,Array1($t0)
			syscall
			li $v0,4
			la $a0,space
			syscall
			addi $t0,$t0,4
			blt $t0,$t1,loopp1
		li $v0,4
		la $a0,newline
		syscall
		jr $ra
		
	print2:
		addi $t0,$zero,0
		lw $t1,Arraysize
		loopp2:
			li $v0,1
			lw $a0,Array2($t0)
			syscall
			li $v0,4
			la $a0,space
			syscall
			addi $t0,$t0,4
			blt $t0,$t1,loopp2
		li $v0,4
		la $a0,newline
		syscall
		jr $ra