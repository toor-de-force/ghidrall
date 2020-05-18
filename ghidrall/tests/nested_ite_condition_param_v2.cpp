// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int func(int n) {
  path_start();
  int goal = 0;
  
  if (n >= 1) {
    goal = 1;
    if (n >= 10) {
      goal = 10;
      if (n >= 50) {
        goal = 50;
        if (n >= 75) {
          goal = 75;
          if (n > 100) {
            goal = 100;
          }
          else {
            goal = -100;
          }
        }
        else {
          goal =  -75;
        }
      }
      else {
	path_goal();
      }
    }
    else {
      goal = -10;
    }
  }

  return goal;
}
int main() {
  func(INT_RAND);
}
