// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

int add(int n) {
  volatile int x = 1;
  return n+x;
}
int main() {
  volatile int x = 0;
  volatile int y = 10;
  volatile int z = 2;
  volatile int a = 5;
  int n = INT_RAND; // n = 1
  path_start();
  if (n >= x && n < y) {
    n = add(n); // n = 1+1 = 2
    n = add(n+z); // 5 = 2+2+1
    volatile int x = n; // volatile to prevent optimization of nongoal
    if (n == a) {
      path_goal();
    }
    else if (x == z) {
      path_nongoal();
    }
  }
}
