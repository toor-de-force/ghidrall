set(ALL_TESTS
  bad_diff_func
  bound_loop_with_var
  compound_condition
  compound_condition_param
  compound_condition_param_v2
  compound_condition_v2
  compound_condition_v3
  condcall_one
  condcall_two
  empty
  exclusive_ite
  exclusive_ite_goal_in_else
  goal_diff_func
  global_var
  global_var_updates
  global_var_nongoal  
  independent_ite
  independent_ite_param
  input_inside_bound_loop
  inter_func_narrow_to_wide_constraint
  inter_func_param
  inter_func_wide_to_narrow_constraint
  inter_rv
  invalid_compound_condition
  invalid_compound_condition_param
  invalid_compound_condition_v2
  invalid_condition
  invalid_inter_func
  invalid_nested_conditions
  linear_flow
  loop_even_odd
  loop_even_odd_nongoal
  multi_call_inter_cond
  multi_call_inter_cond_else
  multi_call_inter_seq
  multiple_ite
  multivar_compound_condition
  nested_condition
  nested_condition_v2
  nested_condition_v3
  nested_ite_condition
  nested_ite_condition_param
  nested_ite_condition_param_v2
  nested_ite_condition_v2
  nested_loop
  oo_simple_goal
  oo_simple_nongoal
  oo_virtual_func_goal
  oo_virtual_func_nongoal
  param_n_var_conpound_condition
  rv_cond
  rv_same_var
  rv_seq
  rv_seq_v1
  rv_seq_v2
  seq_call_five
  seq_call_four
  seq_call_one
  seq_call_three
  seq_call_two
  seq_v4
  single_condition
  single_condition_param
  single_condition_param_v2
  single_condition_v2
  unbound_loop_with_var
  var_values
  var_values_param
  # This makes it a little easier to manage the lists in CMake. Don't remove.
  fake_failed_test
  )

# Were these tests were split, renamed or just removed?
# invalid_inter_mem2, invalid_inter_mem3, multi_call_inter

# Function summary approach
set(FS_FAILING_TESTS
  # This makes it a little easier to manage the lists in CMake. Don't remove.
  fake_failed_test
  )

# Weakest precondition approach
set(WP_FAILING_TESTS
  # This makes it a little easier to manage the lists in CMake. Don't remove.
  fake_failed_test
  )

# SPACER approach
set(SPACER_FAILING_TESTS
  # This makes it a little easier to manage the lists in CMake. Don't remove.
  fake_failed_test
  )

set(FS_PASSING_TESTS ${ALL_TESTS})
set(WP_PASSING_TESTS ${ALL_TESTS})
set(SPACER_PASSING_TESTS ${ALL_TESTS})
list(REMOVE_ITEM FS_PASSING_TESTS ${FS_FAILING_TESTS})
list(REMOVE_ITEM WP_PASSING_TESTS ${WP_FAILING_TESTS})
list(REMOVE_ITEM SPACER_PASSING_TESTS ${SPACER_FAILING_TESTS})

set(PATHANALYZER_TEST_DIR "${CMAKE_SOURCE_DIR}/tests/pathanalyzer")

# Set PATHTEST_CXX_FLAGS to configure compilation flags for the test
# programs.  For example, try one or more of: -fomit-frame-pointer,
# -fno-inline-small-functions, -O1, -O2, -O3, -Os, -Og, etc.
set(CMAKE_CXX_FLAGS ${PATHTEST_CXX_FLAGS})

# No differences were revealed by 32-bit testing, but you can enable it if you install the required packages.
set(CROSS32BIT false)

foreach(test ${ALL_TESTS})
  add_executable(${test} ${test}.cpp)
  if (CROSS32BIT)
    add_executable(${test}_32 ${test}.cpp)
    set_target_properties(${test}_32 PROPERTIES COMPILE_FLAGS "-m32" LINK_FLAGS "-m32")
  endif()
endforeach()

foreach(test ${SPACER_PASSING_TESTS})
  add_test(NAME pathanalyzer_spacer_${test} COMMAND pathanalyzer_spacer_test --allow-64bit ${PHAROS_TEST_OPS} ${test})
  if (CROSS32BIT)
    add_test(NAME pathanalyzer_spacer_${test}_32 COMMAND pathanalyzer_spacer_test ${PHAROS_TEST_OPS} ${test}_32)
  endif()
endforeach()

foreach(test ${WP_PASSING_TESTS})
  add_test(NAME pathanalyzer_wp_${test} COMMAND pathanalyzer_wp_test --allow-64bit ${PHAROS_TEST_OPS} ${test})
  if (CROSS32BIT)
    add_test(NAME pathanalyzer_wp_${test}_32 COMMAND pathanalyzer_wp_test ${PHAROS_TEST_OPS} ${test}_32)
  endif()
endforeach()

foreach(test ${FS_PASSING_TESTS})
  add_test(NAME pathanalyzer_fs_${test} COMMAND pathanalyzer_test --allow-64bit ${PHAROS_TEST_OPS} ${test})
  if (CROSS32BIT)
    add_test(NAME pathanalyzer_fs_${test}_32 COMMAND pathanalyzer_test ${PHAROS_TEST_OPS} ${test}_32)
  endif()
endforeach()
