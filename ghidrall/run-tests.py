import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import os
import datetime
import argparse

parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument("-l", "--locals", choices=["single_struct", "byte_addressable"], default="no_option",
                    help="choose how local variables are displayed")
parser.add_argument("-n", "--nongoal", action="store_true", help="Lift solver heuristics for anti-goals")
parser.add_argument("-o", "--optimization", choices=["0","1","2","3"], default=0, help="Optimization level of source")

args = parser.parse_args()
nongoal = args.nongoal
o = int(args.optimization)

lifting_options = {"locals": args.locals,
                   "solver": "pharos",
                   "entry": "main",
                   "nongoal": nongoal}

begin_time = datetime.datetime.now()

instrumentation_list = ["\"nd\"", "\"verifier.error\"", "\"seahorn.fail\""]

if o == 0:
    path = "zero"
elif o == 1:
    path = "one"
elif o == 2:
    path = "two"
elif o == 3:
    path = "three"
else:
    path = "zero"

file_path = "./tests/binaries/pathanalyzer/" + path + "/"

sat = "; CHECK-L: sat\n"
unsat = "; CHECK-L: unsat\n"
warning = "; CHECK-L: WARNING: no assertion was found\n"

check_goal = {
    "args_v1_32": "; CHECK-L: sat\n",
    "args_v1_64": "; CHECK-L: sat\n",
    "bound_loop_with_var_32": "; CHECK-L: sat\n",
    "bound_loop_with_var_64": "; CHECK-L: sat\n",
    "call_trace_v1_32": "; CHECK-L: sat\n",
    "call_trace_v1_64": "; CHECK-L: sat\n",
    "call_trace_v2_32": "; CHECK-L: sat\n",
    "call_trace_v2_64": "; CHECK-L: sat\n",
    "call_trace_v3_32": "; CHECK-L: sat\n",
    "call_trace_v3_64": "; CHECK-L: sat\n",
    "call_trace_v4_32": "; CHECK-L: sat\n",
    "call_trace_v4_64": "; CHECK-L: sat\n",
    "call_trace_v5_32": "; CHECK-L: sat\n",
    "call_trace_v5_64": "; CHECK-L: sat\n",
    "call_trace_v6_32": "; CHECK-L: sat\n",
    "call_trace_v6_64": "; CHECK-L: sat\n",
    "compound_condition_param_v1_32": "; CHECK-L: sat\n",
    "compound_condition_param_v1_64": "; CHECK-L: sat\n",
    "compound_condition_param_v2_32": "; CHECK-L: sat\n",
    "compound_condition_param_v2_64": "; CHECK-L: sat\n",
    "compound_condition_v1_32": "; CHECK-L: sat\n",
    "compound_condition_v1_64": "; CHECK-L: sat\n",
    "compound_condition_v2_32": "; CHECK-L: sat\n",
    "compound_condition_v2_64": "; CHECK-L: sat\n",
    "compound_condition_v3_32": "; CHECK-L: sat\n",
    "compound_condition_v3_64": "; CHECK-L: sat\n",
    "condcall_v1_32": "; CHECK-L: sat\n",
    "condcall_v1_64": "; CHECK-L: sat\n",
    "condcall_v2_32": "; CHECK-L: sat\n",
    "condcall_v2_64": "; CHECK-L: sat\n",
    "down_call_chain_32": "; CHECK-L: sat\n",
    "down_call_chain_64": "; CHECK-L: sat\n",
    "empty_32": "; CHECK-L: sat\n",
    "empty_64": "; CHECK-L: sat\n",
    "endless_loop_32": "; CHECK-L: sat\n",
    "endless_loop_64": "; CHECK-L: sat\n",
    "exception_32": "; CHECK-L: sat\n",
    "exception_64": "; CHECK-L: sat\n",
    "exclusive_ite_32": "; CHECK-L: sat\n",
    "exclusive_ite_64": "; CHECK-L: sat\n",
    "exclusive_ite_goal_in_else_32": "; CHECK-L: sat\n",
    "exclusive_ite_goal_in_else_64": "; CHECK-L: sat\n",
    "explosive_conditions_v1_32": "; CHECK-L: sat\n",
    "explosive_conditions_v1_64": "; CHECK-L: sat\n",
    "fake_failed_test_32": "; CHECK-L: sat\n",
    "fake_failed_test_64": "; CHECK-L: sat\n",
    "fishyxml_v1_32": "; CHECK-L: sat\n",
    "fishyxml_v1_64": "; CHECK-L: sat\n",
    "fishyxml_v2_32": "; CHECK-L: sat\n",
    "fishyxml_v2_64": "; CHECK-L: sat\n",
    "fishyxml_v3_32": "; CHECK-L: sat\n",
    "fishyxml_v3_64": "; CHECK-L: sat\n",
    "func_array_32": "; CHECK-L: sat\n",
    "func_array_64": "; CHECK-L: sat\n",
    "independent_ite_32": "; CHECK-L: sat\n",
    "independent_ite_64": "; CHECK-L: sat\n",
    "independent_ite_param_32": "; CHECK-L: sat\n",
    "independent_ite_param_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_mod_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_mod_64": "; CHECK-L: sat\n",
    "inter_func_narrow_to_wide_constraint_32": "; CHECK-L: sat\n",
    "inter_func_narrow_to_wide_constraint_64": "; CHECK-L: sat\n",
    "inter_func_param_32": "; CHECK-L: sat\n",
    "inter_func_param_64": "; CHECK-L: sat\n",
    "inter_func_wide_to_narrow_constraint_32": "; CHECK-L: sat\n",
    "inter_func_wide_to_narrow_constraint_64": "; CHECK-L: sat\n",
    "inter_rv_32": "; CHECK-L: sat\n",
    "inter_rv_64": "; CHECK-L: sat\n",
    "linear_flow_32": "; CHECK-L: sat\n",
    "linear_flow_64": "; CHECK-L: sat\n",
    "loop_even_odd_32": "; CHECK-L: sat\n",
    "loop_even_odd_64": "; CHECK-L: sat\n",
    "multi_call_inter_cond_32": "; CHECK-L: sat\n",
    "multi_call_inter_cond_64": "; CHECK-L: sat\n",
    "multi_call_inter_cond_else_32": "; CHECK-L: sat\n",
    "multi_call_inter_cond_else_64": "; CHECK-L: sat\n",
    "multi_call_inter_seq_32": "; CHECK-L: sat\n",
    "multi_call_inter_seq_64": "; CHECK-L: sat\n",
    "multiple_ite_32": "; CHECK-L: sat\n",
    "multiple_ite_64": "; CHECK-L: sat\n",
    "multivar_compound_condition_v1_32": "; CHECK-L: sat\n",
    "multivar_compound_condition_v1_64": "; CHECK-L: sat\n",
    "multivar_compound_condition_v2_32": "; CHECK-L: sat\n",
    "multivar_compound_condition_v2_64": "; CHECK-L: sat\n",
    "nested_condition_v1_32": "; CHECK-L: sat\n",
    "nested_condition_v1_64": "; CHECK-L: sat\n",
    "nested_condition_v2_32": "; CHECK-L: sat\n",
    "nested_condition_v2_64": "; CHECK-L: sat\n",
    "nested_condition_v3_32": "; CHECK-L: sat\n",
    "nested_condition_v3_64": "; CHECK-L: sat\n",
    "nested_condition_v4_32": "; CHECK-L: sat\n",
    "nested_condition_v4_64": "; CHECK-L: sat\n",
    "nested_ite_condition_param_v1_32": "; CHECK-L: sat\n",
    "nested_ite_condition_param_v1_64": "; CHECK-L: sat\n",
    "nested_ite_condition_param_v2_32": "; CHECK-L: sat\n",
    "nested_ite_condition_param_v2_64": "; CHECK-L: sat\n",
    "nested_ite_condition_v1_32": "; CHECK-L: sat\n",
    "nested_ite_condition_v1_64": "; CHECK-L: sat\n",
    "nested_ite_condition_v2_32": "; CHECK-L: sat\n",
    "nested_ite_condition_v2_64": "; CHECK-L: sat\n",
    "nested_loop_32": "; CHECK-L: sat\n",
    "nested_loop_64": "; CHECK-L: sat\n",
    "oo_simple_32": "; CHECK-L: sat\n",
    "oo_simple_64": "; CHECK-L: sat\n",
    "oo_virtual_func_32": "; CHECK-L: sat\n",
    "oo_virtual_func_64": "; CHECK-L: sat\n",
    "outlaw_v1_32": "; CHECK-L: sat\n",
    "outlaw_v1_64": "; CHECK-L: sat\n",
    "outlaw_v2_32": "; CHECK-L: sat\n",
    "outlaw_v2_64": "; CHECK-L: sat\n",
    "outlaw_v3_32": "; CHECK-L: sat\n",
    "outlaw_v3_64": "; CHECK-L: sat\n",
    "outlaw_v4_32": "; CHECK-L: sat\n",
    "outlaw_v4_64": "; CHECK-L: sat\n",
    "pointer_write_32": "; CHECK-L: sat\n",
    "pointer_write_64": "; CHECK-L: sat\n",
    "recurse_v1_32": "; CHECK-L: sat\n",
    "recurse_v1_64": "; CHECK-L: sat\n",
    "recurse_v2_32": "; CHECK-L: sat\n",
    "recurse_v2_64": "; CHECK-L: sat\n",
    "rv_cond_32": "; CHECK-L: sat\n",
    "rv_cond_64": "; CHECK-L: sat\n",
    "rv_same_var_32": "; CHECK-L: sat\n",
    "rv_same_var_64": "; CHECK-L: sat\n",
    "rv_seq_v1_32": "; CHECK-L: sat\n",
    "rv_seq_v1_64": "; CHECK-L: sat\n",
    "rv_seq_v2_32": "; CHECK-L: sat\n",
    "rv_seq_v2_64": "; CHECK-L: sat\n",
    "rv_seq_v3_32": "; CHECK-L: sat\n",
    "rv_seq_v3_64": "; CHECK-L: sat\n",
    "single_condition_param_v1_32": "; CHECK-L: sat\n",
    "single_condition_param_v1_64": "; CHECK-L: sat\n",
    "single_condition_param_v2_32": "; CHECK-L: sat\n",
    "single_condition_param_v2_64": "; CHECK-L: sat\n",
    "single_condition_v1_32": "; CHECK-L: sat\n",
    "single_condition_v1_64": "; CHECK-L: sat\n",
    "single_condition_v2_32": "; CHECK-L: sat\n",
    "single_condition_v2_64": "; CHECK-L: sat\n",
    "strcmp_32": "; CHECK-L: sat\n",
    "strcmp_64": "; CHECK-L: sat\n",
    "stress_both_32": "; CHECK-L: sat\n",
    "stress_both_64": "; CHECK-L: sat\n",
    "stress_deep_32": "; CHECK-L: sat\n",
    "stress_deep_64": "; CHECK-L: sat\n",
    "stress_wide_32": "; CHECK-L: sat\n",
    "stress_wide_64": "; CHECK-L: sat\n",
    "switch_v1_32": "; CHECK-L: sat\n",
    "switch_v1_64": "; CHECK-L: sat\n",
    "switch_v2_32": "; CHECK-L: sat\n",
    "switch_v2_64": "; CHECK-L: sat\n",
    "switch_v3_32": "; CHECK-L: sat\n",
    "switch_v3_64": "; CHECK-L: sat\n",
    "switch_v4_32": "; CHECK-L: sat\n",
    "switch_v4_64": "; CHECK-L: sat\n",
    "switch_v5_32": "; CHECK-L: sat\n",
    "switch_v5_64": "; CHECK-L: sat\n",
    "unbound_loop_with_var_32": "; CHECK-L: sat\n",
    "unbound_loop_with_var_64": "; CHECK-L: sat\n",
    "unused_params_v1_32": "; CHECK-L: sat\n",
    "unused_params_v1_64": "; CHECK-L: sat\n",
    "unused_params_v2_32": "; CHECK-L: sat\n",
    "unused_params_v2_64": "; CHECK-L: sat\n",
    "up_and_down_v1_32": "; CHECK-L: sat\n",
    "up_and_down_v1_64": "; CHECK-L: sat\n",
    "var_values_32": "; CHECK-L: sat\n",
    "var_values_64": "; CHECK-L: sat\n",
    "var_values_param_32": "; CHECK-L: sat\n",
    "var_values_param_64": "; CHECK-L: sat\n",
    "varargs_32": "; CHECK-L: sat\n",
    "varargs_64": "; CHECK-L: sat\n"
    }

check_non_goal = {
    "args_v1_32": "; CHECK-L: unsat\n",
    "args_v1_64": "; CHECK-L: unsat\n",
    "bound_loop_with_var_32": "; CHECK-L: unsat\n",
    "bound_loop_with_var_64": "; CHECK-L: unsat\n",
    "call_trace_v1_32": "; CHECK-L: unsat\n",
    "call_trace_v1_64": "; CHECK-L: unsat\n",
    "call_trace_v2_32": "; CHECK-L: unsat\n",
    "call_trace_v2_64": "; CHECK-L: unsat\n",
    "call_trace_v3_32": "; CHECK-L: unsat\n",
    "call_trace_v3_64": "; CHECK-L: unsat\n",
    "call_trace_v4_32": "; CHECK-L: unsat\n",
    "call_trace_v4_64": "; CHECK-L: unsat\n",
    "call_trace_v5_32": "; CHECK-L: unsat\n",
    "call_trace_v5_64": "; CHECK-L: unsat\n",
    "call_trace_v6_32": "; CHECK-L: unsat\n",
    "call_trace_v6_64": "; CHECK-L: unsat\n",
    "compound_condition_param_v1_32": "; CHECK-L: unsat\n",
    "compound_condition_param_v1_64": "; CHECK-L: unsat\n",
    "compound_condition_param_v2_32": "; CHECK-L: unsat\n",
    "compound_condition_param_v2_64": "; CHECK-L: unsat\n",
    "compound_condition_v1_32": "; CHECK-L: unsat\n",
    "compound_condition_v1_64": "; CHECK-L: unsat\n",
    "compound_condition_v2_32": "; CHECK-L: unsat\n",
    "compound_condition_v2_64": "; CHECK-L: unsat\n",
    "compound_condition_v3_32": "; CHECK-L: unsat\n",
    "compound_condition_v3_64": "; CHECK-L: unsat\n",
    "condcall_v1_32": "; CHECK-L: unsat\n",
    "condcall_v1_64": "; CHECK-L: unsat\n",
    "condcall_v2_32": "; CHECK-L: unsat\n",
    "condcall_v2_64": "; CHECK-L: unsat\n",
    "down_call_chain_32": "; CHECK-L: unsat\n",
    "down_call_chain_64": "; CHECK-L: unsat\n",
    "empty_32": "; CHECK-L: unsat\n",
    "empty_64": "; CHECK-L: unsat\n",
    "endless_loop_32": "; CHECK-L: unsat\n",
    "endless_loop_64": "; CHECK-L: unsat\n",
    "exception_32": "; CHECK-L: unsat\n",
    "exception_64": "; CHECK-L: unsat\n",
    "exclusive_ite_32": "; CHECK-L: unsat\n",
    "exclusive_ite_64": "; CHECK-L: unsat\n",
    "exclusive_ite_goal_in_else_32": "; CHECK-L: unsat\n",
    "exclusive_ite_goal_in_else_64": "; CHECK-L: unsat\n",
    "explosive_conditions_v1_32": "; CHECK-L: unsat\n",
    "explosive_conditions_v1_64": "; CHECK-L: unsat\n",
    "fake_failed_test_32": "; CHECK-L: unsat\n",
    "fake_failed_test_64": "; CHECK-L: unsat\n",
    "fishyxml_v1_32": "; CHECK-L: unsat\n",
    "fishyxml_v1_64": "; CHECK-L: unsat\n",
    "fishyxml_v2_32": "; CHECK-L: unsat\n",
    "fishyxml_v2_64": "; CHECK-L: unsat\n",
    "fishyxml_v3_32": "; CHECK-L: unsat\n",
    "fishyxml_v3_64": "; CHECK-L: unsat\n",
    "func_array_32": "; CHECK-L: unsat\n",
    "func_array_64": "; CHECK-L: unsat\n",
    "independent_ite_32": "; CHECK-L: unsat\n",
    "independent_ite_64": "; CHECK-L: unsat\n",
    "independent_ite_param_32": "; CHECK-L: unsat\n",
    "independent_ite_param_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_mod_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_mod_64": "; CHECK-L: unsat\n",
    "inter_func_narrow_to_wide_constraint_32": "; CHECK-L: unsat\n",
    "inter_func_narrow_to_wide_constraint_64": "; CHECK-L: unsat\n",
    "inter_func_param_32": "; CHECK-L: unsat\n",
    "inter_func_param_64": "; CHECK-L: unsat\n",
    "inter_func_wide_to_narrow_constraint_32": "; CHECK-L: unsat\n",
    "inter_func_wide_to_narrow_constraint_64": "; CHECK-L: unsat\n",
    "inter_rv_32": "; CHECK-L: unsat\n",
    "inter_rv_64": "; CHECK-L: unsat\n",
    "linear_flow_32": "; CHECK-L: unsat\n",
    "linear_flow_64": "; CHECK-L: unsat\n",
    "loop_even_odd_32": "; CHECK-L: unsat\n",
    "loop_even_odd_64": "; CHECK-L: unsat\n",
    "multi_call_inter_cond_32": "; CHECK-L: unsat\n",
    "multi_call_inter_cond_64": "; CHECK-L: unsat\n",
    "multi_call_inter_cond_else_32": "; CHECK-L: unsat\n",
    "multi_call_inter_cond_else_64": "; CHECK-L: unsat\n",
    "multi_call_inter_seq_32": "; CHECK-L: unsat\n",
    "multi_call_inter_seq_64": "; CHECK-L: unsat\n",
    "multiple_ite_32": "; CHECK-L: unsat\n",
    "multiple_ite_64": "; CHECK-L: unsat\n",
    "multivar_compound_condition_v1_32": "; CHECK-L: unsat\n",
    "multivar_compound_condition_v1_64": "; CHECK-L: unsat\n",
    "multivar_compound_condition_v2_32": "; CHECK-L: unsat\n",
    "multivar_compound_condition_v2_64": "; CHECK-L: unsat\n",
    "nested_condition_v1_32": "; CHECK-L: unsat\n",
    "nested_condition_v1_64": "; CHECK-L: unsat\n",
    "nested_condition_v2_32": "; CHECK-L: unsat\n",
    "nested_condition_v2_64": "; CHECK-L: unsat\n",
    "nested_condition_v3_32": "; CHECK-L: unsat\n",
    "nested_condition_v3_64": "; CHECK-L: unsat\n",
    "nested_condition_v4_32": "; CHECK-L: unsat\n",
    "nested_condition_v4_64": "; CHECK-L: unsat\n",
    "nested_ite_condition_param_v1_32": "; CHECK-L: unsat\n",
    "nested_ite_condition_param_v1_64": "; CHECK-L: unsat\n",
    "nested_ite_condition_param_v2_32": "; CHECK-L: unsat\n",
    "nested_ite_condition_param_v2_64": "; CHECK-L: unsat\n",
    "nested_ite_condition_v1_32": "; CHECK-L: unsat\n",
    "nested_ite_condition_v1_64": "; CHECK-L: unsat\n",
    "nested_ite_condition_v2_32": "; CHECK-L: unsat\n",
    "nested_ite_condition_v2_64": "; CHECK-L: unsat\n",
    "nested_loop_32": "; CHECK-L: unsat\n",
    "nested_loop_64": "; CHECK-L: unsat\n",
    "oo_simple_32": "; CHECK-L: unsat\n",
    "oo_simple_64": "; CHECK-L: unsat\n",
    "oo_virtual_func_32": "; CHECK-L: unsat\n",
    "oo_virtual_func_64": "; CHECK-L: unsat\n",
    "outlaw_v1_32": "; CHECK-L: unsat\n",
    "outlaw_v1_64": "; CHECK-L: unsat\n",
    "outlaw_v2_32": "; CHECK-L: unsat\n",
    "outlaw_v2_64": "; CHECK-L: unsat\n",
    "outlaw_v3_32": "; CHECK-L: unsat\n",
    "outlaw_v3_64": "; CHECK-L: unsat\n",
    "outlaw_v4_32": "; CHECK-L: unsat\n",
    "outlaw_v4_64": "; CHECK-L: unsat\n",
    "pointer_write_32": "; CHECK-L: unsat\n",
    "pointer_write_64": "; CHECK-L: unsat\n",
    "recurse_v1_32": "; CHECK-L: unsat\n",
    "recurse_v1_64": "; CHECK-L: unsat\n",
    "recurse_v2_32": "; CHECK-L: unsat\n",
    "recurse_v2_64": "; CHECK-L: unsat\n",
    "rv_cond_32": "; CHECK-L: unsat\n",
    "rv_cond_64": "; CHECK-L: unsat\n",
    "rv_same_var_32": "; CHECK-L: unsat\n",
    "rv_same_var_64": "; CHECK-L: unsat\n",
    "rv_seq_v1_32": "; CHECK-L: unsat\n",
    "rv_seq_v1_64": "; CHECK-L: unsat\n",
    "rv_seq_v2_32": "; CHECK-L: unsat\n",
    "rv_seq_v2_64": "; CHECK-L: unsat\n",
    "rv_seq_v3_32": "; CHECK-L: unsat\n",
    "rv_seq_v3_64": "; CHECK-L: unsat\n",
    "single_condition_param_v1_32": "; CHECK-L: unsat\n",
    "single_condition_param_v1_64": "; CHECK-L: unsat\n",
    "single_condition_param_v2_32": "; CHECK-L: unsat\n",
    "single_condition_param_v2_64": "; CHECK-L: unsat\n",
    "single_condition_v1_32": "; CHECK-L: unsat\n",
    "single_condition_v1_64": "; CHECK-L: unsat\n",
    "single_condition_v2_32": "; CHECK-L: unsat\n",
    "single_condition_v2_64": "; CHECK-L: unsat\n",
    "strcmp_32": "; CHECK-L: unsat\n",
    "strcmp_64": "; CHECK-L: unsat\n",
    "stress_both_32": "; CHECK-L: unsat\n",
    "stress_both_64": "; CHECK-L: unsat\n",
    "stress_deep_32": "; CHECK-L: unsat\n",
    "stress_deep_64": "; CHECK-L: unsat\n",
    "stress_wide_32": "; CHECK-L: unsat\n",
    "stress_wide_64": "; CHECK-L: unsat\n",
    "switch_v1_32": "; CHECK-L: unsat\n",
    "switch_v1_64": "; CHECK-L: unsat\n",
    "switch_v2_32": "; CHECK-L: unsat\n",
    "switch_v2_64": "; CHECK-L: unsat\n",
    "switch_v3_32": "; CHECK-L: unsat\n",
    "switch_v3_64": "; CHECK-L: unsat\n",
    "switch_v4_32": "; CHECK-L: unsat\n",
    "switch_v4_64": "; CHECK-L: unsat\n",
    "switch_v5_32": "; CHECK-L: unsat\n",
    "switch_v5_64": "; CHECK-L: unsat\n",
    "unbound_loop_with_var_32": "; CHECK-L: unsat\n",
    "unbound_loop_with_var_64": "; CHECK-L: unsat\n",
    "unused_params_v1_32": "; CHECK-L: unsat\n",
    "unused_params_v1_64": "; CHECK-L: unsat\n",
    "unused_params_v2_32": "; CHECK-L: unsat\n",
    "unused_params_v2_64": "; CHECK-L: unsat\n",
    "up_and_down_v1_32": "; CHECK-L: unsat\n",
    "up_and_down_v1_64": "; CHECK-L: unsat\n",
    "var_values_32": "; CHECK-L: unsat\n",
    "var_values_64": "; CHECK-L: unsat\n",
    "var_values_param_32": "; CHECK-L: unsat\n",
    "var_values_param_64": "; CHECK-L: unsat\n",
    "varargs_32": "; CHECK-L: unsat\n",
    "varargs_64": "; CHECK-L: unsat\n"}

if nongoal:
    goal = "nongoal"
    file_list = list(check_non_goal.keys())
    check = check_non_goal
else:
    goal = "goal"
    file_list = list(check_goal.keys())
    check = check_goal

if not os.path.exists("tests/results"):
    os.mkdir("tests/results", mode=0o777)

failures = []

for file in file_list:
    try:
        print("Decompiling " + file + "...", end="")
        filename = file_path + file
        print(filename)
        decompile_info = decompiler.decompile_binary(filename,  lifting_options.get("entry"))
        print("Done.")
        print("Lifting " + file + "...", end="")
        module = lifter.lift_binary(decompile_info, file, lifting_options)
        print("Done.")
        print("Verifying " + file + "...", end="")
        verifier.verify(module)
        print("Done.")
        # print("Compiling " + file + "...", end="")
        # verifier.compile_ir(module)
        # print("Done.")
        if file in check:
            solve = "chc"
            run1 = "; RUN: %sea pf --bv-chc --inline -O0 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run2 = "; RUN: %sea pf --bv-chc --inline -O1 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run3 = "; RUN: %sea pf --bv-chc --inline -O2 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run4 = "; RUN: %sea pf --bv-chc --inline -O3 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            module_string = run1 + run2 + run3 + run4 + check[file] + "\n" + str(module)
            for instrument in instrumentation_list:
                module_string = module_string.replace(instrument, instrument[1:-1])
            results = "tests/results/"
            f = open(results + file + "." + goal + "." + solve + "." + path + "." + args.locals + ".ll", 'w')
            f.write(module_string)
            f.close()

            solve = "bmc"
            run1 = "; RUN: %sea bpf --bmc=mono --horn-bv2=true --inline -O0 --bound=12 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run2 = "; RUN: %sea bpf --bmc=mono --horn-bv2=true --inline -O1 --bound=12 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run3 = "; RUN: %sea bpf --bmc=mono --horn-bv2=true --inline -O2 --bound=12 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            run4 = "; RUN: %sea bpf --bmc=mono --horn-bv2=true --inline -O3 --bound=12 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
            module_string = run1 + run2 + run3 + run4 + check[file] + "\n" + str(module)
            for instrument in instrumentation_list:
                module_string = module_string.replace(instrument, instrument[1:-1])
            results = "tests/results/"
            f = open(results + file + "." + goal + "." + solve + "." + path + "." + args.locals + ".ll", 'w')
            f.write(module_string)
            f.close()
        else:
            raise Exception("Not in check list")
    except:
        failures.append(file)
        print("Failed for some reason")

print("The following files failed:")
for fail in failures:
    print("\t" + fail)
print("Time to lift: " + str(datetime.datetime.now() - begin_time))
