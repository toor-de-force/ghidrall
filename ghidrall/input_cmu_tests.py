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
parser.add_argument("-o", "--optimization", choices=["0","1","2"], default=0, help="Optimization level of source")

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
else:
    path = "zero"

file_path = "./tests/binaries/" + path + "/"

sat = "; CHECK-L: sat\n"
unsat = "; CHECK-L: unsat\n"
warning = "; CHECK-L: WARNING: no assertion was found\n"

check_goal = {
    "input_inside_bound_loop_v1_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v1_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v2_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v2_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v3_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v3_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v4_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v4_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v5_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v5_64": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v6_32": "; CHECK-L: sat\n",
    "input_inside_bound_loop_v6_64": "; CHECK-L: sat\n"
}


check_non_goal = {
    "input_inside_bound_loop_v1_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v1_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v2_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v2_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v3_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v3_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v4_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v4_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v5_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v5_64": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v6_32": "; CHECK-L: unsat\n",
    "input_inside_bound_loop_v6_64": "; CHECK-L: unsatt\n"
}


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
        print("Failed for some reason")

print("Time to lift: " + str(datetime.datetime.now() - begin_time))
