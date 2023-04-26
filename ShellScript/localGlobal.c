#include <stdio.h>
#include <unistd.h>

int global=0;

int main ()
{
	int local=0, p=fork();
	if (p<0)
		printf("Fork Failed\n");
	else if (p=0)
		printf("Child local : %d\nChild global : %d\n\n", ++local, ++global);
	else
		printf("Child local : %d\nParent global : %d\n\n", ++local, ++global);
	return 0;
}