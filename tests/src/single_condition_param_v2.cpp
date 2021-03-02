// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

// Static so that if it gets inlined, the non-inlined copy is removed.
void func(int y) {
  path_start();
  volatile int n = y;
  volatile int a = 2;
  volatile int b = 3;
  volatile int c = 1;
  if (n == a) {
    n = n + c;
    volatile int x = n; // volatile to prevent optimization of nongoal
    if (a < 2) {
      path_nongoal();
    }
  }
  if (n==b){
    path_goal();
  }
}
int main() {
  func(INT_RAND);
}
