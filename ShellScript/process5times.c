#include <stdio.h>
#include <unistd.h>

int main ()
{
	int p=fork();
	if (p<0)
		printf("Fork Failed\n");
	else if (p=0)
	{
		for (int i=0; i<5; i++)
		{
			system("ps -ax");
			sleep(50);
		}
	}
	return 0;
}