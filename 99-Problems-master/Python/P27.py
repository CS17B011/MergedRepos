from itertools import combinations 

def group234(X):
	G1 = []
	G2 = []
	G3 = []
	G = []
	if len(X)!=9:
		return
	G3 = combinations(X,4)
	for e4 in G3:
		tmp = [x for x in X if x not in e4]
		G2 = combinations(tmp,3)
		for e3 in G2:
			G1 = tuple([x for x in tmp if x not in e3])
			G.append([e4,e3,G1])
	return G 

X = [1,2,3,4,5,6,7,8,9]
G = group234(X)
for ele in G:
	print(ele)