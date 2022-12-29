#include<stdio.h>

int main()
{
	register int x = 9;
	register int y = 25;
	x = x + y;
	y = x - y;
	x = x - y; 
	return 0;
}