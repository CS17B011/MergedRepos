#include<stdio.h>

int main()
{
	int A[10]={1,2,3,4,5,6,7,8,9,10};
	int B[10]={11,12,13,14,15,16,17,18,19,20};
	int i,tmp;
	for(i=0;i<10;i++)
	{
		tmp = A[i];
		A[i] = B[i];
		B[i] = tmp;
	}
	return 0;
}