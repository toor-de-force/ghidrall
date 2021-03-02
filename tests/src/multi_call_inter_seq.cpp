// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

// This function becomes inlined
int func1(int x) {
  volatile int n = x;
  path_goal();
  if (n < 1) {
    path_nongoal();
  }
  return n;
}
void func0(int x) {
  volatile int n = x;
  if (n > 0 && n < 10) {
    func1(n+2);
    func1(n+4);
  }
}
int main() {
  path_start();
  func0(INT_RAND);
}
