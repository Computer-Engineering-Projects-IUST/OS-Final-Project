#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#define SLEEP_TIME 10

lock_thread* lk;

void f1(void* argument1, void* argument2) {
  int num = *(int*)argument1;
  if (num) lock_acquire(lk);
  printf(1, "Function 1 is printing: %s\n", num ? "first" : "whenever");
  printf(1, "Function 1 sleep for %d ms\n", SLEEP_TIME);
  sleep(SLEEP_TIME);
  if (num) lock_release(lk);
  exit();
}

void f2(void* argument1, void* argument2) {
  int num = *(int*)argument1;
  if (num) lock_acquire(lk);
  printf(1, "Function 2 is printing: %s\n", num ? "second" : "whenever");
  printf(1, "Function 2 sleep for %d ms\n", SLEEP_TIME);
  sleep(SLEEP_TIME);
  if (num) lock_release(lk);
  exit();
}

void f3(void* argument1, void* argument2) {
  int num = *(int*)argument1;
  if (num) lock_acquire(lk);
  printf(1, "Function 3 is printing: %s\n", num ? "third" : "whenever");
  printf(1, "Function 3 sleep for %d ms\n", SLEEP_TIME);
  sleep(SLEEP_TIME);
  if (num) lock_release(lk);
  exit();
}

int main(int argc, char *argv[])
{
    lock_init(lk);
    int arg1 = 0, arg2 = 1;

    printf(1, "Test 1: Two threads with lock, one without:\n");
    thread_create(&f1, (void *)&arg1, (void *)&arg2); // Thread with lock
    thread_create(&f2, (void *)&arg1, (void *)&arg2); // Thread with lock
    arg1 = 0;
    thread_create(&f3, (void *)&arg1, (void *)&arg2); // Thread without lock
    thread_join();
    thread_join();
    thread_join();

    arg1 = 1;
    printf(1, "Test 2: One thread with lock, two without:\n");
    thread_create(&f1, (void *)&arg1, (void *)&arg2); // Thread with lock
    arg1 = 0;
    thread_create(&f2, (void *)&arg1, (void *)&arg2); // Thread without lock
    thread_create(&f3, (void *)&arg1, (void *)&arg2); // Thread without lock
    thread_join();
    thread_join();
    thread_join();

    printf(1, "Test 3: Sequential print statements:\n");
    thread_create(&f1, (void *)&arg1, (void *)&arg2);
    thread_create(&f2, (void *)&arg1, (void *)&arg2);
    thread_create(&f3, (void *)&arg1, (void *)&arg2);
    thread_join();
    thread_join();
    thread_join();

    exit();
}
