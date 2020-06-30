#!/usr/bin/env python3

import argparse
import os
import sys
import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import shutil

parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument('Path', metavar='path', type=str, help="the path to the target binary")
parser.add_argument("-s", "--solver", choices=["pharos", "seahorn"], default="pharos",
                    help="choose what solver notation to resolve from")
parser.add_argument("-l", "--locals", choices=["single_struct", "byte_addressable"], default="no_option",
                    help="choose how local variables are displayed")
parser.add_argument("-d", "--debug", action="store_true", help="dump intermediary xml")
parser.add_argument("-e", "--entry", metavar='entry', type=str, help="choose entry function. Default \"main\"", default="main")

args = parser.parse_args()
file_name = args.Path
lifting_options = {"locals": args.locals,
                   "solver": args.solver,
                   "entry": args.entry}
debug = args.debug
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
decompiler = decompiler.decompile_binary(file_name, lifting_options.get("entry"))
decompile_info = decompiler.functions_pdg
if debug:
    for function in list(decompile_info.keys()):
        f = open(file + "_" + function + ".xml", 'w')
        f.write(decompile_info[function])
        f.close()
print("Done.")
print("Lifting " + file + "...", end="")
module = lifter.lift_binary(decompiler, file, lifting_options)
print("Done.")
print("Verifying " + file + "...", end="")
verifier.verify(module)
print("Done.")
print("Compiling " + file + "...", end="")
verifier.compile_ir(module)
print("Done.")
# Cleanup
module_string = str(module)
f = open(file + ".ll", 'w')
f.write(module_string)
f.close()
