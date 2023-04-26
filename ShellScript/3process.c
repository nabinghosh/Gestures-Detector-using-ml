#include <stdio.h>
#include <unistd.h>

int main ()
{
	int p1=fork();
	if (p1<0)
		printf("Fork 1 Failed\n");
	else if (p1=0)
		system("who");
	else if (p1>0)
	{
		int p2=fork();
		if (p2<0)
			printf("Fork 2 Failed\n");
		else if (p2=0)
			system("ls -l");
		else if (p2>0)
		{
			int p3=fork();
			if (p3<0)
				printf("Fork 3 Failed\n");
			else if (p3=0)
				system("date");
			else if (p3>0)
			{
				wait(NULL);
				syatem("ps -ax | tr -s ' ' | cut -d ' ' -f 1,3 | grep $p1");
				syatem("ps -ax | tr -s ' ' | cut -d ' ' -f 1,3 | grep $p2");
				syatem("ps -ax | tr -s ' ' | cut -d ' ' -f 1,3 | grep $p3");
			}
		}
	}
	return 0;
}