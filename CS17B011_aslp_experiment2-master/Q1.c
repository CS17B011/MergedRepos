#include<stdio.h>
int main()
{
	register int a=10;
	register int b=20;
	int c,d,e,f;
	c = a+b;
	d = a-b;
	e = a*b;
	f = a/b;
	return 0;
}