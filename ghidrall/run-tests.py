import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import os
import shutil
import datetime
import argparse

parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument("-chc", action="store_true", help="Build tests for bit-precise CHC engine in Seahorn")
args = parser.parse_args()
chc = args.chc

begin_time = datetime.datetime.now()

instrumentation_list = ["\"nd\"", "\"verifier.error\"", "\"seahorn.fail\""]
file_path = "./tests/build/"

# Delete all test results except
file_list = [
    "argv_argc_imp_test"
    "bad_diff_func",
    "bound_loop_with_var",
    "compound_condition",
    "compound_condition_param",
    "compound_condition_param_v2",
    "compound_condition_v2",
    "compound_condition_v3",
    "condcall_one",
    "condcall_two",
    "empty",
    "exclusive_ite",
    "exclusive_ite_goal_in_else",
    "fake_failed_test",
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
    "inter_rv",
    "invalid_compound_condition",
    "invalid_compound_condition_param",
    "invalid_compound_condition_v2",
    "invalid_condition",
    "invalid_inter_func",
    "invalid_nested_conditions",
    "linear_flow",
    "loop_even_odd",
    "loop_even_odd_nongoal",  
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
    "oo_simple_goal",
    "oo_simple_nongoal",
    "oo_virtual_func_goal",
    "oo_virtual_func_nongoal",
    "param_n_var_conpound_condition",
    "rv_cond",
    "rv_same_var",
    "rv_seq",
    "rv_seq_v1",
    "rv_seq_v2",
    "seq_call_five",
    "seq_call_four",
    "seq_call_one",
    "seq_call_three",
    "seq_call_two",
    "seq_v4",
    "single_condition",
    "single_condition_param",
    "single_condition_param_v2",
    "single_condition_v2",
    "unbound_loop_with_var",
    "var_values",
    "var_values_param"
    ]

sat = "; CHECK-L: sat\n"
unsat = "; CHECK-L: unsat\n"
warning = "; CHECK-L: WARNING: no assertion was found\n"

check = {
    "argv_argc_imp_test" : "; CHECK-L: WARNING: no assertion was found\n",
    "bad_diff_func" : "; CHECK-L: WARNING: no assertion was found\n",
    "bound_loop_with_var" : "; CHECK-L: sat\n",
    "compound_condition" : "; CHECK-L: sat\n",
    "compound_condition_param" : "; CHECK-L: sat\n",
    "compound_condition_param_v2" : "; CHECK-L: sat\n",
    "compound_condition_v2" : "; CHECK-L: sat\n",
    "compound_condition_v3" : "; CHECK-L: sat\n",
    "condcall_one" : "; CHECK-L: sat\n",
    "condcall_two" : "; CHECK-L: WARNING: no assertion was found\n",
    "empty" : "; CHECK-L: sat\n",
    "exclusive_ite" : "; CHECK-L: sat\n",
    "exclusive_ite_goal_in_else" : "; CHECK-L: sat\n",
    "fake_failed_test" : ";XFAIL: *\n\n; CHECK-L: sat\n",
    "goal_diff_func" : "; CHECK-L: sat\n",
    "global_var" : "; CHECK-L: sat\n",
    "global_var_updates" : "; CHECK-L: sat\n",
    "global_var_nongoal" : "; CHECK-L: unsat\n",
    "independent_ite" : "; CHECK-L: sat\n",
    "independent_ite_param" : "; CHECK-L: sat\n",
    "input_inside_bound_loop" : "; CHECK-L: sat\n",
    "inter_func_narrow_to_wide_constraint" : "; CHECK-L: sat\n",
    "inter_func_param" : "; CHECK-L: sat\n",
    "inter_func_wide_to_narrow_constraint" : "; CHECK-L: sat\n",
    "inter_rv" : "; CHECK-L: sat\n",
    "invalid_compound_condition" : "; CHECK-L: WARNING: no assertion was found\n",
    "invalid_compound_condition_param" : "; CHECK-L: WARNING: no assertion was found\n",
    "invalid_compound_condition_v2" : "; CHECK-L: WARNING: no assertion was found\n",
    "invalid_condition" : "; CHECK-L: WARNING: no assertion was found\n",
    "invalid_inter_func" : "; CHECK-L: WARNING: no assertion was found\n",
    "invalid_nested_conditions" : "; CHECK-L: unsat\n",
    "linear_flow" : "; CHECK-L: sat\n",
    "loop_even_odd" : "; CHECK-L: sat\n",
    "loop_even_odd_nongoal" : "; CHECK-L: sat\n",
    "multi_call_inter_cond" : "; CHECK-L: sat\n",
    "multi_call_inter_cond_else" : "; CHECK-L: sat\n",
    "multi_call_inter_seq" : "; CHECK-L: sat\n",
    "multiple_ite" : "; CHECK-L: sat\n",
    "multivar_compound_condition" : "; CHECK-L: sat\n",
    "nested_condition" : "; CHECK-L: sat\n",
    "nested_condition_v2" : "; CHECK-L: sat\n",
    "nested_condition_v3" : "; CHECK-L: sat\n",
    "nested_ite_condition" : "; CHECK-L: sat\n",
    "nested_ite_condition_param" : "; CHECK-L: sat\n",
    "nested_ite_condition_param_v2" : "; CHECK-L: sat\n",
    "nested_ite_condition_v2" : "; CHECK-L: sat\n",
    "nested_loop" : "; CHECK-L: sat\n",
    "oo_simple_goal" : "; CHECK-L: sat\n",  
    "oo_simple_nongoal" : "; CHECK-L: sat\n", 
    "oo_virtual_func_goal" : "; CHECK-L: sat\n", 
    "oo_virtual_func_nongoal" : "; CHECK-L: sat\n", 
    "param_n_var_conpound_condition" : "; CHECK-L: sat\n",
    "rv_cond" : "; CHECK-L: sat\n",
    "rv_same_var" : "; CHECK-L: sat\n",
    "rv_seq" : "; CHECK-L: sat\n",
    "rv_seq_v1" : "; CHECK-L: sat\n",
    "rv_seq_v2" : "; CHECK-L: sat\n",
    "seq_call_five" : "; CHECK-L: sat\n",
    "seq_call_four" : "; CHECK-L: sat\n",
    "seq_call_one" : "; CHECK-L: sat\n",
    "seq_call_three" : "; CHECK-L: sat\n",
    "seq_call_two" : "; CHECK-L: sat\n",
    "seq_v4" : "; CHECK-L: sat\n",
    "single_condition" : "; CHECK-L: sat\n",
    "single_condition_param" : "; CHECK-L: sat\n",
    "single_condition_param_v2" : "; CHECK-L: sat\n",
    "single_condition_v2" : "; CHECK-L: sat\n",
    "unbound_loop_with_var" : "; CHECK-L: sat\n",
    "var_values" : "; CHECK-L: sat\n",
    "var_values_param" : "; CHECK-L: sat\n"}

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
    for function in list(decompile_info.functions_pdg.keys()):
        f = open(results_path + file + "_" + function + ".xml", 'w')
        f.write(decompile_info.functions_pdg[function])
        f.close()
    print("Done.")
    print("Lifting " + file + "...", end="")
    lifting_options = {"stack": "no_option"}
    module = lifter.lift_binary(decompile_info, file, lifting_options)
    print("Done.")
    print("Verifying " + file + "...", end="")
    verifier.verify(module)
    print("Done.")
    print("Compiling " + file + "...", end="")
    verifier.compile_ir(module)
    print("Done.")
    if chc:
        run1 = "; RUN: %sea pf --bv-chc --inline -O0 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run2 = "; RUN: %sea pf --bv-chc --inline -O1 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run3 = "; RUN: %sea pf --bv-chc --inline -O2 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run4 = "; RUN: %sea pf --bv-chc --inline -O3 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
    else:
        run1 = "; RUN: %sea bpf --bmc=mono --inline -O0 --bound=7 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run2 = "; RUN: %sea bpf --bmc=mono --inline -O1 --bound=7 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run3 = "; RUN: %sea bpf --bmc=mono --inline -O2 --bound=7 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
        run4 = "; RUN: %sea bpf --bmc=mono --inline -O3 --bound=7 \"%s\" 2>&1 | OutputCheck %s --comment=\\;\n"
    module_string = run1 + run2 + run3 + run4 + check[file] + "\n" + str(module)
    for instrument in instrumentation_list:
        module_string = module_string.replace(instrument, instrument[1:-1])
    results = "tests/results/"
    f = open(results + file + ".ll", 'w')
    f.write(module_string)
    f.close()

print("Time to lift: " + str(datetime.datetime.now() - begin_time))
