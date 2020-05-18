// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int func2(int n) {
  return n+2;
}
int func1(int n) {
  return func2(n)+1;
}
int func0(int n) {
  return func1(n);
}
int main() {
  int n = INT_RAND; // 2
  path_start();
  n = func0(n); // n = (0+3) +1 +1 = 3
  if (n == 5) {
    path_goal();
  }
}
  
