#include <stdlib.h>
#include <time.h>

#define INT_RAND (nd())
#define SMALL_POSITIVE_RAND (nd() & 0xFFFF)
#define BOOL_RAND ((bool)nd())
#define CHAR_RAND ((char)nd())

#define NOINLINE __attribute__((noinline))

extern time_t global_time;
time_t global_time;

int NOINLINE nd() {
  return time(&global_time);
}

void NOINLINE path_start() {
  time(&global_time);
}

void NOINLINE path_goal() {
  time(&global_time);
}

void NOINLINE path_nongoal(){
  time(&global_time);
}

void NOINLINE example_constrain_arg (int x, int y){
  if (x == y){
    path_goal();
  } else {
    path_nongoal();
  }
}
int NOINLINE example_constrain_ret (int y){
  volatile int x = INT_RAND;
  if (x == y){
    path_goal();
  } else {
    path_nongoal();
  }
  return x;
}

int __ctr;

int NOINLINE example_counter (void){
  return ++__ctr;
}