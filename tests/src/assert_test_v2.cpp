// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

int main() {
  path_start();
  volatile int y = 43;
  volatile int x = example_constrain_ret (y);
  if (x == y)
    path_goal();
  else
    path_nongoal();
}
