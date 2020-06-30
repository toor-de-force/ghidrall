// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int main() {
  path_start();
  int goal = 0;
  int n=INT_RAND;
  
  if (n >= 100) {
    goal = 100;
  }
  else if (n > 75) {
    goal = 75;
  }
  else if (n > 50) {
    goal = 50;
  }
  else if (n > 25) {
    goal = 25;
  }
  else if (n > 10) {
    goal = 10;
  }
  else {
    path_goal();
  }

  return goal;
}
