#!/usr/bin/env python3
import sys
import os
import time
import argparse
import tempfile
import subprocess
import glob

import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier

# Take a timestamp for _total_ elapsed time.
first_start = time.time()

# Parse options.
parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument('-so', "--source_optimization", choices=["0","1","2"], default="0",
                    help='the executable to analyze')
parser.add_argument("-l", "--locals",
                    choices=["single_struct", "byte_addressable"],
                    default="no_option",
                    help="choose how local variables are displayed")
parser.add_argument("-n", "--nongoal", action="store_true",
                    help="Lift solver heuristics for anti-goals")
parser.add_argument("-L", "--llvm-file", default="",
                    help="specify the llvm file name")
parser.add_argument("-s", "--solver", choices=["bmc", "chc"], default="chc",
                    help="Use the specified solver")
parser.add_argument("-o", "--optimization", choices=["0","1","2","3"], default=0,
                    help="Optimization level of seahorn")
# This option just makes it easier to capture the output from batch tests.
parser.add_argument("-c", "--capture", default="",
                    help="Redirect standard out and standard error")
# This option is a hack and needs to be fixed in CMake.
parser.add_argument("-g", "--goal", action="store_true",
                    help="Lift solver heuristics for goals")

args = parser.parse_args()

# This is a little hackish, but it makes CTest integration easier.
if args.capture != '':
    sys.stdout = open(args.capture, "w")
    sys.stderr = sys.stdout

# Convert command line options into options for the lifter.
lifting_options = {
    "locals": args.locals,
    "solver": "pharos",
    "entry": "main",
    "cgc": False,
    "nongoal": args.nongoal
}

file_list = glob.glob('latest_tests/' + args.source_optimization + '/*')

seahorn_fails = {}
seahorn_pass = {}

for file in file_list:
    out = ""
    file_name = file.split('/')[-1] + "_" + args.source_optimization
    print("Test for " + file_name)

    try:
        # Decompile using Radare2.
        start = time.time()
        decompile_info = decompiler.decompile_binary(file,  lifting_options.get("entry"))
        print("Decompiling took %7.5f seconds." % (time.time() - start))

        # Lift into LLVM.
        start = time.time()
        module = lifter.lift_binary(decompile_info, file, lifting_options)
        print("Lifting took %7.5f seconds." % (time.time() - start))

        # Verify?
        start = time.time()
        verifier.verify(module)
        print("Verifying took %7.5f seconds." % (time.time() - start))
    except:
        print("Failed for some reason in lifting stage.")
        seahorn_fails[file_name] = "Failed in lifting."
        continue

    # Create a temporary file to hold the LLVM results.
    if args.llvm_file != '':
        llvm_file = args.llvm_file
        f = open(llvm_file, 'w')
    else:
        f = tempfile.NamedTemporaryFile(mode='w', suffix='.ll')
        llvm_file = f.name
    f.write(str(module))
    f.flush()

    # Construct a command line to invoke seahorn based on arguments.
    if args.solver == 'chc':
        cmd = 'sea pf --bv-chc --cpu 10 --inline'
    else:
        cmd = 'sea bpf --bmc=mono --cpu 10 --horn-bv2=true --inline --bound=12'
    cmd += " -O%d" % int(args.optimization)
    # Print the command for the user to manually copy if needed.
    print(cmd, llvm_file)
    # Subprocess wants the arguments as a list.
    cmd_args = cmd.split()
    cmd_args.append(llvm_file)

    # Run seahorn.
    result = 'none'
    start = time.time()
    try:
        output = subprocess.check_output(cmd_args)
    except subprocess.CalledProcessError as E:
        out = out + "Test failed in solver (rc=%s) after %7.5f seconds." % (
            E.returncode, time.time() - start) + E.output
        seahorn_fails[file_name] = out

    # Look at the output to detect the sat/unsat result, filter commands
    # from errors and warnings, etc.
    out_str = output.decode('utf-8')
    for line in out_str.split('\n'):
        if line.startswith('/'):
            continue
        if line == 'sat' or line == 'unsat':
            result = line
        elif line == '':
            continue
        else:
            out = out + '\n' + line
    f.close()
    print("Solving took %7.5f seconds." % (time.time() - start))

    # Report the final result, converting sat/unsat to a test pass or
    # failure and exit with an appropriate return code.
    print("Total elapsed time was %7.5f seconds." % (time.time() - first_start))
    if result == 'sat' and args.nongoal == False:
        out = out + "Test passed!"
        seahorn_pass[file_name] = out

    elif result == 'unsat' and args.nongoal == True:
        out =  out + "Test passed!"
        seahorn_pass[file_name] = out
    else:
        out = out + "Test failed, solver returned %s" % result
        seahorn_fails[file_name] = out

print("A total of %s tests were conducted" % len(file_list))
print("%s passed" % len(seahorn_pass))
print("%s failed" % len(seahorn_fails))