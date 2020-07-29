cmake_minimum_required(VERSION 3.10)

project(tests)

set(CMAKE_CXX_FLAGS "-O3")

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
  fake_failed_test
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
  )

foreach(test ${ALL_TESTS})
  add_executable(${test} ${test}.cpp)
endforeach()