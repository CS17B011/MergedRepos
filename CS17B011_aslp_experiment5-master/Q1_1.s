.text
	main:
		li $t1,15
		li $t2,2
		multu $t1,$t2
		mfhi $t1
		mflo $t2
		li $v0,10	#End of Program
		syscall