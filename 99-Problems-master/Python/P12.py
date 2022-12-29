def decode(X):
	Y = []
	for ele in X:
		if isinstance(ele,list):
			for i in range(ele[0]):
				Y.append(ele[1])
		else:
			Y.append(ele)
	return Y

X = [[4,'a'],'b',[3,'c'],'d']
X = decode(X)
print(X)