def keyforsorting(X):
	return len(X)

X = [ ['a','b','c'],['d','e'],['f','g','h'],['d','e'],['i','j','k','l'],['m','n'],['o'] ]
Y = sorted(X,key=keyforsorting)
print(Y)