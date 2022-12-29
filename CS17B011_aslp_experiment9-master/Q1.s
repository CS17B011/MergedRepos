.data
	floatnum1: .float 1.34
	floatnum2: .float 4.58
	floatnum3: .double 1.34
	floatnum4: .double 4.58
.text
	main:
		lwc1 $f1,floatnum1
		lwc1 $f2,floatnum2
		lwc1 $f4,floatnum3
		lwc1 $f6,floatnum4
		add.s $f0,$f1,$f2
		sub.s $f0,$f1,$f2
		mul.s $f0,$f1,$f2
		div.s $f0,$f1,$f2
		add.d $f8,$f4,$f6
		sub.d $f8,$f4,$f6
		mul.d $f8,$f4,$f6
		div.d $f8,$f4,$f6
		li $v0,10
		syscall