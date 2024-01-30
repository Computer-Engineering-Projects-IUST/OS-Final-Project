#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"


lock_thread* lk;



void add(void* arg1, void* arg2) {
  lock_acquire(lk);
  int num1 = *(int*)arg1;
  int num2 = *(int*)arg2;
  printf(1, "this should print %d\n ", num1 + num2);
  //sleep(10);
  lock_release(lk); 
  exit();
}

int
main(int argc, char *argv[])
{
  lock_init(lk) ; 
  printf(1, "test executing threads with lock :\n");
  int arg1 = 9, arg2 = 1 ; 
  thread_create(&add, (void *)&arg1, (void *)&arg2);
  int arg3 = 4 , arg4 = 2;
  thread_create(&add, (void *)&arg3, (void *)&arg4);
  int arg5 = 7 ,  arg6 = 4;
  thread_create(&add, (void *)&arg5, (void *)&arg6);
  thread_join();
  thread_join();
  thread_join();
  exit() ; 
}