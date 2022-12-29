import random

def randomselect(X,n):
	return random.sample(X,n)

X = [1,2,3,4,5,6,7,8,9]
X = randomselect(X,3)

print(X)