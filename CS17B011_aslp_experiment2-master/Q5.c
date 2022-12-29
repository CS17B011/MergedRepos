#include<stdio.h>
int main()
{
	int n=5;
	int i,j;
	int A[n][n],B[n][n],Sum[n][n];
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			A[i][j]=i+j;
			B[i][j]=i-j;
		}
	}
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
			Sum[i][j] = A[i][j] + B[i][j]; 
	}
	return 0;
}