from itertools import combinations 

def groupijk(X,i,j,k):
	G1 = []
	G2 = []
	G3 = []
	G = []
	if len(X)!=i+j+k:
		return
	G3 = combinations(X,i)
	for ei in G3:
		tmp = [x for x in X if x not in ei]
		G2 = combinations(tmp,j)
		for ej in G2:
			G1 = tuple([x for x in tmp if x not in ej])
			G.append([ei,ej,G1])
	return G 

X = [1,2,3,4,5,6]
G = groupijk(X,1,2,3)
for ele in G:
	print(ele)