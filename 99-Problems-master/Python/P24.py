import random
def randomrange(a,b,n):
	return random.sample(range(a,b+1),n)

print(randomrange(1,65,10)) 