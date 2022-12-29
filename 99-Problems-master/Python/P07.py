def flatten(X):
	Y = []
	for ele in X:
		if isinstance(ele,list):
			Z = flatten(ele)
			Y.extend(Z)
		else:
			Y.append(ele)
	return Y

X = [[1,2,3],[4,5],6]
print(flatten(X))
