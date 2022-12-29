import random 

def randpermutation(X):
	return random.sample(X,len(X))

X = [1,2,3,4,5]
print(randpermutation(X))