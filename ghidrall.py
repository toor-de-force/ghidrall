#!/usr/bin/env python3
import sys
import time
import argparse
import tempfile
import subprocess
import json
import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier

# Take a timestamp for _total_ elapsed time.
first_start = time.time()

# Parse options.
parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument('file', type=str,
                    help='the executable to analyze')
parser.add_argument("-l", "--locals",
                    choices=["single_struct", "byte_addressable", "no_option"],
                    default="single_struct",
                    help="choose how local variables are displayed")
parser.add_argument("-n", "--nongoal", action="store_true",
                    help="Lift solver heuristics for anti-goals")
parser.add_argument("-o", "--output-file", default="out.ll",
                    help="specify the output file name")
parser.add_argument("-s", "--solver", choices=["bmc", "chc"], default="chc",
                    help="Use the specified solver")
parser.add_argument("-O", "--optimization", choices=["0", "1", "2", "3"], default=0,
                    help="Optimization level of source")
parser.add_argument("-e", "--entry", default="main", help="Choose the entry point for raising")
parser.add_argument("-f", "--lift_functions", action="store", help="list of functions to be lifted only", default="")
parser.add_argument("-a", "--arch", default="64", choices=["32", "64"], help="32 or 64 bit architecture")


args = parser.parse_args()

if args.lift_functions:
    assert(isinstance(args.lift_functions, str))
    args.lift_functions = args.lift_functions.split(",")
rz=rzpipe.open(args.file)
checker_obj=json.loads(rz.cmd("ij"))
flagforarch=checker_obj["bin"]["bits"]
# Convert command line options into options for the lifter.
lifting_options = {
    "locals": args.locals,
    "solver": args.solver,
    "entry": args.entry,
    "nongoal": args.nongoal,
    "arch": args.arch,
    "functions": args.lift_functions
}

# Decompile using Rizin.
start = time.time()
decompile_info = decompiler.decompile_binary(args.file, lifting_options.get("entry"), lifting_options.get("functions"))
print("Decompiling took %7.5f seconds." % (time.time() - start))

# Lift into LLVM.
start = time.time()
module = lifter.lift_binary(decompile_info, args.file, lifting_options, setflagforarch)
print("Lifting took %7.5f seconds." % (time.time() - start))

# Verify?
start = time.time()
verifier.verify(module)
print("Verifying took %7.5f seconds." % (time.time() - start))

llvm_file = args.output_file
f = open(llvm_file, 'w')
f.write(str(module))
f.flush()

# # Construct a command line to invoke seahorn based on arguments.
# if args.solver == 'chc':
#     cmd = 'sea pf --bv-chc --inline'
# else:
#     cmd = 'sea bpf --bmc=mono --horn-bv2=true --inline --bound=12'
# cmd += " -O%d" % int(args.optimization)
# # Print the command for the user to manually copy if needed.
# print(cmd, llvm_file)
# # Subprocess wants the arguments as a list.
# cmd_args = cmd.split()
# cmd_args.append(llvm_file)
#
# # Run seahorn.
# result = 'none'
# start = time.time()
# try:
#     output = subprocess.check_output(cmd_args)
# except subprocess.CalledProcessError as E:
#     print("Test failed in solver (rc=%s) after %7.5f seconds." % (
#         E.returncode, time.time() - start))
#     print(E.output)
#     sys.exit(1)
#
# # Look at the output to detect the sat/unsat result, filter commands
# # from errors and warnings, etc.
# out_str = output.decode('utf-8')
# for line in out_str.split('\n'):
#     if line.startswith('/'):
#         continue
#     if line == 'sat' or line == 'unsat':
#         result = line
#     elif line == '':
#         continue
#     else:
#         print("Line: ", line)
# f.close()
# print("Solving took %7.5f seconds." % (time.time() - start))
#
# # Report the final result, converting sat/unsat to a test pass or
# # failure and exit with an appropriate return code.
# print("Total elapsed time was %7.5f seconds." % (time.time() - first_start))
# if result == 'sat' and args.nongoal == False:
#     print("Test passed!")
#     sys.exit(0)
# elif result == 'unsat' and args.nongoal == True:
#     print("Test passed!")
#     sys.exit(0)
# else:
#     print("Test failed, solver returned %s" % result)
#     sys.exit(1)



