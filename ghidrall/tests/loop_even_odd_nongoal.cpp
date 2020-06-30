// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=18  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=18  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=18  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=18  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// Crashes with opt level >= O1.

// RUN: %sea pf -m64 -O0 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O1 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O2 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea pf -m64 -O3 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: unsat

#include "test.hpp"

int main() {
  path_start();
  volatile int n = INT_RAND;
  int x = INT_RAND;
  x = x & 0x0f;
  for (int i = 0; i < x+1; i++) {
    n *= 2;
  }
  if (n != 0 && (n % 2) == 1) {
    path_nongoal();
  }
  return n;
}
