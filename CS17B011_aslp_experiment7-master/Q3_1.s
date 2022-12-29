.data
	m: .float 0.25		#Value of m
	c1: .float 6.67		#Value of first Constant
	c2: .float 2.718	#Value of second Constant
	c3: .float 3.14		#Value of third Constant
.text
	main:
		l.s $f0,m	#Loading value of m in f0
		j pvalue
		
	pvalue:
		l.s $f1,c1	#Load First Constant
		mul.s $f0,$f0,$f1
		j zvalue
		
	zvalue:
		mul.s $f1,$f0,$f0	#Value of p^2
		mul.s $f2,$f1,$f0	#Value of p^3
		add.s $f0,$f1,$f2	#z = p^2 + p^3
		j xvalue
		
	xvalue:
		l.s $f1,c2	#Load second Constant
		mul.s $f2,$f0,$f0
		mul.s $f2,$f2,$f0
		add.s $f0,$f1,$f2
		j yvalue
	
	yvalue:
		l.s $f1,c3
		mul.s $f2,$f0,$f0
		mul.s $f2,$f2,$f2
		add.s $f0,$f1,$f2
		li $v0,10
		syscall
