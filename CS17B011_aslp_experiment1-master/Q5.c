#include<stdio.h>
#include<stdlib.h>

int main()
{
	int A[] = {1,2,34,645,8,-23,43,42,1,0};
	int min,max,len,i;
	min = A[0];
	max = A[1];
	len = sizeof(A)/sizeof(int);
	for(i=1;i<len;i++)
	{
		if(A[i]< min)
			min = A[i];
		if(A[i] > max)
			max = A[i];
	}
	return 0;
}