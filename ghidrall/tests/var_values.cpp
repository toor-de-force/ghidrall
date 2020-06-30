// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// RUN: %stest %sea pf %t-harness.ll %t-exe %s -O3 --horn-stats --inline | OutputCheck %s

// CHECK-L: sat

#include "test.hpp"

int main() {

  int x, y, z;
  bool b;
  char c;

  path_start();

  x = INT_RAND;
  y = INT_RAND;
  z = INT_RAND;
  b = BOOL_RAND;
  c = CHAR_RAND;

  if (x==2 && y==(x+8) && b==false && z>7 && c==12) {
    path_goal();
  }
}
