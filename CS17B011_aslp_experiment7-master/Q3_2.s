.data
	r: .float 5.5
	root2: .float 1.73
.text
	main:
		lwc1 $f0,r	#Radius of Cirle
		jal circleArea
		li $v0,10
		syscall
		
	circleArea:
		addi $sp,$sp,-4
		sw $ra,0($sp)
		jal squareArea
		add.s $f3,$f1,$f2 
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra
		
	squareArea:
		addi $sp,$sp,-4
		sw $ra,0($sp)
		jal triangleArea
		mul.s $f1,$f0,$f0
		add.s $f1,$f1,$f1
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra
		
	triangleArea:
		lwc1 $f4,root2
		mul.s $f2,$f0,$f0
		add.s $f5,$f4,$f4
		add.s $f5,$f5,$f4
		mul.s $f2,$f3,$f5		
		jr $ra