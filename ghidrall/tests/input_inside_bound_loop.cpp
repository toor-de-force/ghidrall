// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=4  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=4  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=4  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=4  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %sea pf -m64 -O0 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O1 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O2 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O3 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int main() {
  int sum;
  path_start();
  sum = 0;

  while (sum < 100) {
    sum += INT_RAND % 10;
  }

  path_goal ();

  return sum;
}
