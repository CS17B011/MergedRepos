from collections import defaultdict

def assignedfre(X):
	key = defaultdict(int)
	length = 0
	for ele in X:
		if isinstance(ele,list):
			length = len(ele)
		else:
			length = 1
		key[length]+=1
	return key

def keyforsorting(X):
	return Y[len(X)]

X = [ ['a','b','c'],['d','e'],['f','g','h'],['d','e'],['i','j','k','l'],['m','n'],['o'] ]
Y = assignedfre(X)
L = sorted(X,key=keyforsorting)
print(L)