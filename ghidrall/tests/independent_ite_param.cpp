// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

void func(int n, int k, int j) {
  path_start();
  int x=0;

  if (n == 0) {
    x++;
  }
  if (k == 0) {
    x++;
  }
  if (j == 0) {
    x++;
  }  
  if (x == 3) {
    path_goal();
  }
}

int main() {
  func(INT_RAND, INT_RAND, INT_RAND);
}
