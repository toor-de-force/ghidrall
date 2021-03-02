// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

// Static so that if it gets inlined, the non-inlined copy is removed.
static void func2() {
  volatile int x = 1;
  if (x == 1) {
    path_goal();
  }
}
// Static so that if it gets inlined, the non-inlined copy is removed.
static void func3() {
  volatile int x = 1;
  if (x == 1) {
    path_nongoal();
  }
}
void func1(int x) {
  volatile int n = x; //Trying to prevent inlining
  if (n == 1) {
    func2();
  }
  else {
    func3();
  }
}
int main() {
  int n;

  path_start ();

  n = INT_RAND;

  if (n == 1) {
    func1(n);
  }
}
