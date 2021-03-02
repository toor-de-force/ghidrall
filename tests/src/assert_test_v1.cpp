// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

int main() {
  path_start();
  volatile int x = INT_RAND;
  volatile int y = 42;
  example_constrain_arg (x, y);
  if (x == y)
    path_goal();
  else
    path_nongoal();
}
