#!/usr/bin/env python3

import argparse
import os
import sys
import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import shutil

instrumentation_list = ["\"nd\"", "\"verifier.error\"", "\"seahorn.fail\""]

parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument('Path', metavar='path', type=str, help="the path to the target binary")
parser.add_argument("-s", "--stack", choices=["single_struct", "byte_addressable"], default="no_option",
                    help="choose how local variables are displayed")
args = parser.parse_args()
file_name = args.Path
lifting_options = {"stack": args.stack}
if not os.path.isfile(file_name):
    print("Not a valid input file")
    sys.exit()

file = file_name.split('/')[-1]
results_path = "/tmp/" + file + "/"
try:
    shutil.rmtree(results_path)
except FileNotFoundError:
    pass
os.mkdir(results_path, mode=0o777)
print("Decompiling " + file + "...", end="")
decompile_info = decompiler.decompile_binary(file_name)
for function in list(decompile_info.keys()):
    f = open(file + "_" + function + ".xml", 'w')
    f.write(decompile_info[function])
    f.close()
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
# Cleanup
module_string = str(module)
for instrument in instrumentation_list:
    module_string = module_string.replace(instrument, instrument[1:-1])
f = open(file + ".ll", 'w')
f.write(module_string)
f.close()
