#include<stdio.h>
int isPrime(int n)
{
	if(n==2)
		return 1;
	int i;
	for(i=2;i<n/2;i++)
	{
		if(n%i==0)
			return 0;
	}
	return 1;
}
int NearestPrime(int n)
{
	int i=n,iteration=0;
	while(isPrime(i)!=1 && iteration<=1000)
	{
		i+=2;
		iteration++;
	}
	int j=n;
	iteration=0;
	while(j>2 && isPrime(j)!=1 && iteration<=1000)
	{
		j-=2;
		iteration++;
	}
	if(i-n>n-j)
		return j;
	return i;
}
int main()
{
	int n = 4;
	switch(n%2)
	{
		case 0:
			n++;
			break;
		case 1:
			if(isPrime(n)==0)
				n = NearestPrime(n);
			else
				n++;
			break;
	}
	return 0;
}