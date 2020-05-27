import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import os
import shutil

instrumentation_list = ["\"nd\"", "\"verifier.error\"", "\"seahorn.fail\""]
file_path = "./tests/build/"

# Delete all test results except
file_list = [
    "bad_diff_func",
    "bound_loop_with_var",
    "compound_condition",
    "compound_condition_param",
    "compound_condition_param_v2",
    "compound_condition_v2",
    "compound_condition_v3",
    "condcall_one",
    # Decompiler can't handle return 1-liner? "condcall_two",
    "empty",
    "exclusive_ite",
    "exclusive_ite_goal_in_else",
    "goal_diff_func",
    "global_var",
    "global_var_updates",
    "global_var_nongoal",
    "independent_ite",
    "independent_ite_param",
    "input_inside_bound_loop",
    "inter_func_narrow_to_wide_constraint",
    "inter_func_param",
    "inter_func_wide_to_narrow_constraint",
    # Decompiler can't handle return 1-liner? "inter_rv",
    "invalid_compound_condition",
    "invalid_compound_condition_param",
    "invalid_compound_condition_v2",
    "invalid_condition",
    "invalid_inter_func",
    "invalid_nested_conditions",
    "linear_flow",
    "loop_even_odd",
    # Fails on compiler "loop_even_odd_nongoal",
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
    # Not dealing with OO yet "oo_simple_goal",
    # Not dealing with OO yet "oo_simple_nongoal",
    # Not dealing with OO yet "oo_virtual_func_goal",
    # Not dealing with OO yet "oo_virtual_func_nongoal",
    "param_n_var_conpound_condition",
    "rv_cond",
    "rv_same_var",
    "rv_seq",
    "rv_seq_v1",
    "rv_seq_v2",
    # Decompiler can't handle return 1-liner? "seq_call_five",
    # Decompiler can't handle return 1-liner? "seq_call_four",
    # Decompiler can't handle return 1-liner? "seq_call_one",
    # Decompiler can't handle return 1-liner? "seq_call_three",
    # Decompiler can't handle return 1-liner? "seq_call_two",
    "seq_v4",
    "single_condition",
    "single_condition_param",
    "single_condition_param_v2",
    "single_condition_v2",
    "unbound_loop_with_var",
    "var_values",
    "var_values_param"]
try:
    shutil.rmtree("./tests/results")
except FileNotFoundError:
    pass
os.mkdir("tests/results", mode=0o777)

for file in file_list:
    results_path = "tests/results/" + file + "/"
    os.mkdir(results_path, mode=0o777)
    print("Decompiling " + file + "...", end="")
    decompile_info = decompiler.decompile_binary(file_path + file)
    for function in list(decompile_info.keys()):
        f = open(results_path + file + "_" + function + ".xml", 'w')
        f.write(decompile_info[function])
        f.close()
    print("Done.")
    print("Lifting " + file + "...", end="")
    module = lifter.lift_binary(decompile_info, file)
    print("Done.")
    print("Verifying " + file + "...", end="")
    verifier.verify(module)
    print("Done.")
    print("Compiling " + file + "...", end="")
    verifier.compile_ir(module)
    print("Done.")
    # Cleanup
    module_string = str(module)
    for instrument in instrumentation_list:
        module_string = module_string.replace(instrument, instrument[1:-1])
    results = "tests/results/"
    f = open(results + file + ".ll", 'w')
    f.write(module_string)
    f.close()

