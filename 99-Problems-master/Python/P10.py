def encode(X):
	length = 0
	lastele = None 
	Y = []
	for ele in X:
		if ele == lastele:
			length+=1
		else:
			if lastele!=None:
				Y.append([length,lastele])
			length=1
		lastele = ele
	Y.append([length,lastele])
	return Y

X = [1,1,1,1,2,3,3,1,1,4,5,5,5,5,6]
X = encode(X)
print(X)