Run all tests:
`lit --path SEAHORN_DIR .`

Run tests for a single file only:
`lit --path SEAHORN_DIR -v test_name.cpp`

Right now we have 2 failures: unexpected sat with -O1 in bmc mode, and a crash in opsem in bmc:
```
Testing Time: 7.95s
********************
Failing Tests (2):
    pathanalyzer :: loop_even_odd_nongoal.cpp
    pathanalyzer :: oo_virtual_func_nongoal.cpp

  Expected Passes    : 66
  Expected Failures  : 1
  Unexpected Failures: 2
```
