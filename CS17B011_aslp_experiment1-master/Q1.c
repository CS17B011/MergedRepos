#include<stdio.h>

int main()
{
	register int x = 10;
	register int y = 2;
	register int z;
	z = x + y;
	z = x - y;
	z = x * y;
	z = x / y;
	z = x & y;
	x = x | y;
	z = ~x;
	z = x ^ y;
	return 0; 
}