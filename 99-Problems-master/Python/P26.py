from itertools import combinations 

def combinationk(X,n):
	return combinations(X,n)

X = [1,2,3,4,5,6]
X = combinationk(X, 3)
for i in X: 
    print(i) 