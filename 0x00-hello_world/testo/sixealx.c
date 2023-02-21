#include <stdio.h>
int main (){
	int a;
	char b;
	long c;
	float d;

	printf("Size of an int: %lu byte(s)\n", (unsigned long) sizeof(a));
	printf("Size of a char: %lu byte(s)\n", (unsigned long) sizeof(b));
	printf("Size of a long: %lu byte(s)\n", (unsigned long) sizeof(c));
	printf("Size of a float: %lu byte(s)\n", (unsigned long) sizeof(d));
}
