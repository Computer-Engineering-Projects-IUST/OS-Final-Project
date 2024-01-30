#include "types.h"
#include "user.h"

#define CHILDREN_COUNT 3
#define SLEEP_DURATION 100

int global_id = 0;  // Global ID to distinguish between different threads

void worker(void *arg1, void *arg2) {
    int id = *(int *)arg1;
    int duration = *(int *)arg2;
    printf(1, "Thread %d: Starting work for %d ticks\n", id, duration);

    // Simulate some work by sleeping
    sleep(duration);

    printf(1, "Thread %d: Finished work\n", id);
    exit();  // Thread exits after completing work
}

int main(int argc, char *argv[]) {
    int i;
    int pid;
    int duration = SLEEP_DURATION;

    for (i = 0; i < CHILDREN_COUNT; ++i) {
        pid = fork();  // Create a new process

        if (pid < 0) {
            printf(1, "Fork failed\n");
            exit();
        } else if (pid == 0) {
            // In child process
            global_id++;  // Increment global ID for the new thread
            int child_id = global_id;

            // Create child threads
            void *stack = malloc(4096);
            clone(worker, &child_id, &duration, stack);

            while (1) {
                sleep(100);  // Parent thread does minimal work
            }

            free(stack);
            exit();
        }
    }

    for (i = 0; i < CHILDREN_COUNT; ++i) {
        wait();  // Wait for child processes to complete
    }

    exit();
}