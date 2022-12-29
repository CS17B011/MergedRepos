.text
	main:
		li $s0,4	#Storing m
		li $s1,5	#Storing k
		li $s2,2	#Storing n
		
		move $a0,$s0
		jal multi_fun
		move $t0,$v0	#t0 has value of 1*m
		move $t1,$s1
		move $t2,$s2
		div  $t3,$t1,$t2 #multi_func(1,m)/n
		add $t3,$t3,$t1  #k + multi_func(1,m)/n
	
		li $v0,10	#End of Program
		syscall
		
	multi_fun:
		move $v0,$a0
		jr $ra		
