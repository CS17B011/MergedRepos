def duplicate(X):
	return [ele for ele in X for i in range(2)]

X = [1,2,3,4,5,6]
X = duplicate(X)
print(X)