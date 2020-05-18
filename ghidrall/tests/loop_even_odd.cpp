// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=12  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=12 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=12  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=12 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %sea pf -m64 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int main() {
  path_start();
  int n = INT_RAND;
  for (int i = 0; i < 9; i++) {
    n *= 2;
  }
  if (n != 0 && (n % 2) == 0) {
    path_goal();
  }
}
