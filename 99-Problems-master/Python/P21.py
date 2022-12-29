def insertatk(X,index,val):
	X.insert(index-1,val)
	return X

X = [1,2,3,5,6,7,8]
insertatk(X,4,4)
print(X) 