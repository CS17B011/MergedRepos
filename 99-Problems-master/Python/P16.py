def drop(X,k):
	return [ele for index,ele in enumerate(X) if (index+1)%k!=0]

X = [1,2,3,4,5,6,7,8,9,10]
X = drop(X,3)
print(X)