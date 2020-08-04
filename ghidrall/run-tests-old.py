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
parser.add_argument("-o", "--optimization", choices=["0","1","2","3"], default="0", help="Optimization level of source")
parser.add_argument("-m", "--architecture", choices=["64", "32"], default="32", help="architecture")

args = parser.parse_args()
nongoal = args.nongoal
o = int(args.optimization)
m = args.architecture

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

if m == "64":
    arch = "64"
else:
    arch = "32"

file_path = "./tests/old/" + path + "/" + arch + "/"

check_goal = {
    "bound_loop_with_var" : "; CHECK-L: sat\n",
    "compound_condition" : "; CHECK-L: sat\n",
    "compound_condition_param" : "; CHECK-L: sat\n",
    "compound_condition_param_v2" : "; CHECK-L: sat\n",
    "compound_condition_v2" : "; CHECK-L: sat\n",
    "compound_condition_v3" : "; CHECK-L: sat\n",
    "condcall_one" : "; CHECK-L: sat\n",
    "condcall_two" : "; CHECK-L: sat\n",
    "empty" : "; CHECK-L: sat\n",
    "exclusive_ite" : "; CHECK-L: sat\n",
    "exclusive_ite_goal_in_else" : "; CHECK-L: sat\n",
    "fake_failed_test" : "; CHECK-L: sat\n",
    "goal_diff_func" : "; CHECK-L: sat\n",
    "global_var" : "; CHECK-L: sat\n",
    "global_var_updates" : "; CHECK-L: sat\n",
    "independent_ite" : "; CHECK-L: sat\n",
    "independent_ite_param" : "; CHECK-L: sat\n",
    "input_inside_bound_loop" : "; CHECK-L: sat\n",
    "inter_func_narrow_to_wide_constraint" : "; CHECK-L: sat\n",
    "inter_func_param" : "; CHECK-L: sat\n",
    "inter_func_wide_to_narrow_constraint" : "; CHECK-L: sat\n",
    "inter_rv" : "; CHECK-L: sat\n",
    "linear_flow" : "; CHECK-L: sat\n",
    "loop_even_odd" : "; CHECK-L: sat\n",
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
    "var_values_param" : "; CHECK-L: sat\n"
}

check_non_goal = {
    "bad_diff_func" : "; CHECK-L: sat\n",
    "global_var_nongoal" : "; CHECK-L: unsat\n",
    "invalid_compound_condition" : "; CHECK-L: unsat\n",
    "invalid_compound_condition_param" : "; CHECK-L: unsat\n",
    "invalid_compound_condition_v2" : "; CHECK-L: unsat\n",
    "invalid_condition" : "; CHECK-L: unsat\n",
    "invalid_inter_func" : "; CHECK-L: unsat\n",
    "invalid_nested_conditions" : "; CHECK-L: unsat\n",
    "loop_even_odd_nongoal" : "; CHECK-L: unsat\n",
    "oo_simple_nongoal" : "; CHECK-L: unsat\n",
    "oo_virtual_func_nongoal" : "; CHECK-L: unsat\n"}

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
        decompile_info = decompiler.decompile_binary(filename,  lifting_options.get("entry"))
        print("Done.")
        print("Lifting " + file + "...", end="")
        module = lifter.lift_binary(decompile_info, file, lifting_options)
        print("Done.")
        print("Verifying " + file + "...", end="")
        verifier.verify(module)
        print("Done.")
        print("Compiling " + file + "...", end="")
        verifier.compile_ir(module)
        print("Done.")
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
            f = open(results + file + "." + goal + "." + solve + "." + path + "." + args.locals + "." + arch + ".ll", 'w')
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
            f = open(results + file + "." + goal + "." + solve + "." + path + "." + args.locals + "." + arch + ".ll", 'w')
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
