// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// CHECK-L: unsat

#include "test.hpp"

NOINLINE void func2() {
  path_nongoal();
}
void func1(volatile int n) {
  if (n == 0) {
    func2();
  }
}
int main() {
  int n = INT_RAND;
  path_start();
  // this simply makes the tree node smaller
  if (n == 1) {
    func1(n);
  }
}
