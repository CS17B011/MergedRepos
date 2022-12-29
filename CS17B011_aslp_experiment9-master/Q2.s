.data
	n: .word 3
	A: .float 1.2,2.3,3.4,4.5,5.6,6.7,7.8,8.9,9.10
	B: .float 1.2,2.3,3.4,4.5,5.6,6.7,7.8,8.9,9.10
	C: .space 36
	
.text
	main:
		la $t0,A
		la $t1,B
		la $t2,C
		lw $t4,n
		li $t3,0
		mul $t4,$t4,$t4
						
		loop:
			bge $t3,$t4,End
			lwc1 $f0,0($t0)
			lwc1 $f1,0($t1)
			add.s $f2,$f0,$f1
			swc1 $f2,0($t2)
			addi $t0,$t0,4
			addi $t1,$t1,4
			addi $t2,$t2,4
			addi $t3,$t3,1
			j loop
			
		End:
			li $v0,10
			syscall