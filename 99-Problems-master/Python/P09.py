def pack(X):
	tmp = []
	Y = []
	lastele = None
	for ele in X:
		if ele == lastele:
			tmp.append(ele)
		else:
			if len(tmp)!=0:
				Y.append(tmp)
			tmp = []
			tmp.append(ele)
		lastele = ele
	if len(tmp)!=0:
		Y.append(tmp)
	return Y

X = [1,1,1,1,2,2,1,1,3,3,3,4,4,5]
X = pack(X)
print(X)
