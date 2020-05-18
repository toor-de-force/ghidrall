// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

void func1(int n) {
  if (n==6) {
    // This is only reachable when the n==6 condition is true
    path_goal();
  }
}
void func0(int n) {
  if (n==5) {
    func1(n);
  }
  else if (n==4) {
    func1(n);
  }
  else {
    // Only valid option
    func1(n);
  }
}
int main() {
  path_start();
  func0(INT_RAND);
}
