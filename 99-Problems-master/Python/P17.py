def splitintwo(X,k):
	return X[:k],X[k:]

X = [1,2,3,4,5,6,7,8,9,10]
L1,L2 = splitintwo(X,4)
print(L1)
print(L2)