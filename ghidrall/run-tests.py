import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import os
import shutil

instrumentation_list = ["\"nd\"", "\"verifier.error\"", "\"seahorn.fail\""]
file_path = "./tests/build/"
file_list = ["bad_diff_func",
             "bound_loop_with_var",
             "compound_condition",
             "compound_condition_param",
             "compound_condition_param_v2",
             "compound_condition_v2",
             # weird instruction domination issue "compound_condition_v3",
             # CAST missing"condcall_one",
             # CAST missing"condcall_two",
             "empty",
             "exclusive_ite",
             "exclusive_ite_goal_in_else",
             "goal_diff_func",
             # globals not implemented "global_var",
             # globals not implemented "global_var_updates",
             # globals not implemented "global_var_nongoal",
             "independent_ite",
             "independent_ite_param",
             "input_inside_bound_loop",
             "inter_func_narrow_to_wide_constraint",
             "inter_func_param",
             # CAST missing "inter_func_wide_to_narrow_constraint",
             # Pointer issue "inter_rv",
             "invalid_compound_condition",
             "invalid_compound_condition_param",
             "invalid_compound_condition_v2",
             "invalid_condition",
             "invalid_inter_func",
             "invalid_nested_conditions",
             "linear_flow",
             "loop_even_odd",
             # CAST missing "loop_even_odd_nongoal",
             "multi_call_inter_cond",
             "multi_call_inter_cond_else",
             "multi_call_inter_seq",
             "multiple_ite",
             "multivar_compound_condition",
             "nested_condition",
             "nested_condition_v2",
             "nested_condition_v3",
             "nested_ite_condition",
             "nested_ite_condition_param",
             "nested_ite_condition_param_v2",
             "nested_ite_condition_v2",
             "nested_loop",
             # CAST missing "oo_simple_goal",
             # CAST missing "oo_simple_nongoal",
             # CAST missing "oo_virtual_func_goal",
             # CAST missing "oo_virtual_func_nongoal",
             "param_n_var_conpound_condition",
             "rv_cond",
             "rv_same_var",
             "rv_seq",
             "rv_seq_v1",
             "rv_seq_v2",
             # Pointer issue "seq_call_five",
             # Odd argument 1U "seq_call_four",
             # Pointer issue "seq_call_one",
             # Pointer issue "seq_call_three",
             # Pointer issue "seq_call_two",
             "seq_v4",
             "single_condition",
             "single_condition_param",
             "single_condition_param_v2",
             "single_condition_v2",
             "unbound_loop_with_var",
             "var_values"]
             # CAST missing"var_values_param"]

try:
    shutil.rmtree("./test_results")
except FileNotFoundError:
    pass
os.mkdir("test_results", mode=0o777)


for file in file_list:
    results_path = "test_results/" + file + "/"
    os.mkdir(results_path, mode=0o777)
    print("Decompiling " + file + "...", end="")
    decompile_info = decompiler.decompile_binary(file_path + file)
    for function in list(decompile_info.keys()):
        f = open(results_path + file + "_" + function + ".data", 'w')
        f.write(decompile_info[function])
        f.close()
    print("Done.")
    print("Lifting " + file + "...", end="")
    module = lifter.lift_binary(decompile_info, file)
    print("Done.")
    print("Verifying " + file + "...", end="")
    verifier.verify(module)
    print("Done.")
    # Cleanup
    module_string = str(module)
    for instrument in instrumentation_list:
        module_string = module_string.replace(instrument, instrument[1:-1])
    results = "results/"
    f = open(results + file + ".ll", 'w')
    f.write(module_string)
    f.close()

