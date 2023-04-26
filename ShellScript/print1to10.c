#include <stdio.h>
#include <unistd.h>

int main ()
{
	int p1=fork();
	if (p1<0)
		printf("Fork Failed\n");
	else if (p1=0)
	{
		printf("Child 1 PID : %d\nChild 1 PPID : %d",getpid(), getppid());
		for (int i=1; i<=10; i++)
			printf("%d\n",i);
	}
	else if (p1>0)
	{
		int p2=fork();
		if (p2<0)
			printf("Fork Failed\n");
		else if (p2=0)
		{
			printf("Child 2 PID : %d\nChild 2 PPID : %d",getpid(), getppid());
			for (int i=1; i<=10; i++)
				printf("%d\n",i);
		}
		else if (p2>0)
		{
			wait(NULL);
			printf("Goodbye\n");
		}
	}
	return 0;
}