#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
/**
 * main- main entry
 * Return: 0 or 1
 */

int main(void)
{
	int i;
	pid_t pid, pid_child;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid == 0)
			exit(0);
	}
	for (i = 0; i < 5; i++)
	{
		pid_child = wait(NULL);
		printf("Zombie process created, PID: %d\n", pid_child);
	}
	return (0);
}
