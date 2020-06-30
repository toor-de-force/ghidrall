// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8  --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int func3(int n) {
  return n-n;
}
int func2(int n) {
  return n+n;
}
int  func1(int n) {
  if (n) return func2(n+1); 
  else return func3(n);
}
int main() {
  int n = INT_RAND;
  path_start();
  if (n<5) {
    n = func1(n); // 6 = (n+1)+(n+1) = 2n+2 = 2 to begin with 
  }
  else {
    n = func1(n-1); 
  }
  if (n == 6) {
    path_goal();
  }
}
