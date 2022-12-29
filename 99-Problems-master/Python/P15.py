def duplicate(X,k):
	return [ele for ele in X for i in range(k)]

X = [1,2,3,4,5,6]
X = duplicate(X,3)
print(X)