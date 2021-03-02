// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

int main() {
  path_start();
  example_counter ();
  example_counter ();
  volatile int x = example_counter ();
  volatile int y = 45;
  if (x == y)
    path_goal();
  else
    path_nongoal();
}
