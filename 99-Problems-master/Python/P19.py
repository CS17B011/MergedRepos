def rotate(X,n):
	return X[n:] + X[:n]

X = [1,2,3,4,5,6,7,8]
L = rotate(X,-2)
print(L)