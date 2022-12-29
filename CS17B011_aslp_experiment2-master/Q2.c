#include<stdio.h>
int main()
{
	int n=5,m=6,i;
	int A[n];
	for(i=0;i<n;i++)
		A[i]=i;
	for(i=0;i<n;i++)
		A[i]=A[i]+m;
	return 0;
}