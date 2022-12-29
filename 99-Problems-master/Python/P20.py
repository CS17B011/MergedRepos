def deletekth(X,k):
	del X[k-1]
	return X

X = [1,2,3,4,5,6,7,8]
deletekth(X,5)
print(X)