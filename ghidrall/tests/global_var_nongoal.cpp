// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// CHECK-L: unsat

#include "test.hpp"

volatile int x;

void func() {
  if (x == 11) {
    x = 7;
  }
}
void func2() {
  x = INT_RAND;
}
int main() {
  path_start();
  x = 13;
  func();
  if (x == 7) {
    func2();
  }
  if (x == 4) {
    path_nongoal();
  }
}
