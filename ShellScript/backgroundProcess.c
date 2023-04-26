#include <stdio.h>
#include <unistd.h>

int main ()
{
	int p=fork();
	if (p<0)
		printf("Fork Failed\n");
	else if (p=0)
	{
		sleep(50);
		system("ps -ax");
	}
	return 0;
}