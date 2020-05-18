// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %sea pf -m64 -O0 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O1 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O2 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O3 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// Preprocessing kills the CEX.
// RAN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int main() {
  path_start();
  int n = INT_RAND;
  int i = 0;
  while (i < n) {
    if (n == 5) {
      path_goal();
    }
    ++i;
  }
}
