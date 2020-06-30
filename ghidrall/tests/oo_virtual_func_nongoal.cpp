// RUN: %sea bpf -m64 -O0 --bmc=mono --bound=8 --horn-stats --inline  --devirt-functions "%s" 2>&1 | OutputCheck %s

// Sat with -O0.

// RUN: %sea bpf -m64 -O1 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O2 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s
// RUN: %sea bpf -m64 -O3 --bmc=mono --bound=8 --horn-stats --inline  "%s" 2>&1 | OutputCheck %s

// CHECK-L: unsat

#include "test.hpp"

class Cls {
 private:
  volatile int member = 3;
 public:
  Cls() {
    member = 4;
  }

  virtual int get_member() {
    return member;
  }
};

int main() {
  path_start();
  Cls* c = new Cls();
  if (c->get_member() == 5) {
    path_nongoal();
  }
}
