#include<stdio.h>
#include<stdlib.h>

int main()
{
	int *A[3],*B[3],*C[3];
	int i,j;
	for(i=0;i<3;i++)
	{
		A[i] = (int*)malloc(3*sizeof(int*));
		B[i] = (int*)malloc(3*sizeof(int*));
		C[i] = (int*)malloc(3*sizeof(int*));
	}
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			A[i][j]=i+j;
			B[i][j]=i-j;
			C[i][j]=0;
		}
	}
	int k,x;
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			x = 0;
			for(k=0;k<3;k++)
				x+=A[i][k] * B[k][j];
			C[i][j] = x;
		}
	}
	return 0;
}