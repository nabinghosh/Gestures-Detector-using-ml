#include <stdio.h>
#include <unistd.h>

int main ()
{
	pid_t p=fork();
	if (p<0)
		printf("Mission failed. Try again!");
	else if (p=0)
	{
		printf("-----Child Process-----");
		printf("Child pid : %d\nParent pid : %d\n\n", getpid(), getppid());
	}
	else
	{
		printf("-----Parent Process-----");
		printf("Child pid : %d\nParent pid : %d\n\n", p, getpid());
	}
	return 0;
}