#include<stdio.h>
int main()
{
	int mark[101]={0};
	int prime[100],count=0;
	int i=2,j;
	do
	{
		if(mark[i]==0)
		{
			prime[count]=i;
			count++;
			j=2*i;
			while(j<=100)
				mark[j]=1;
		}
		i++;
	}
	while(i<=100);
	return 0;
}