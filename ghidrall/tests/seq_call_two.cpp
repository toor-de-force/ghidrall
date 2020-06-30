// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int add(int n) {
  return n+1;
}
int far_add(int n) {
  return add(n);
}
int main() {
  int n = INT_RAND; // 3
  path_start();
  n = far_add(n); // n = 3+1 = 4
  n = far_add(n); // n = 4+1 = 5
  if (n == 5) {
    path_goal();
  }
}
