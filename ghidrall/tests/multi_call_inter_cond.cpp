// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=12  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=12 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=12  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=12 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

void func2(int n) {
  if (n==5) {
    // This is only reachable when the n==5 condition is true
    path_goal();
  }
}
void func1(int n) {
  if (n==5) {
    func2(n); // Only valid option
  }
  else if (n>5) {
    func2(n);
  }
  else {
    func2(n+0x42); // not valid because the arg!=5
  }
}
int main() {
  path_start();
  func1(INT_RAND);
}
