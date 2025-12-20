// process_creation.c
// Demonstrates fork(): parent and child processes.
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid = fork();
    if (pid == -1) {
        perror("fork");
        return 1;
    }
    if (pid == 0) {
        // Child process
        printf("This is the child process. PID: %d, PPID: %d\n", getpid(), getppid());
    } else {
        // Parent process
        printf("This is the parent process. PID: %d, child PID: %d\n", getpid(), pid);
    }
    return 0;
}
