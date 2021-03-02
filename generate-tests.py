#!/usr/bin/env python3
import subprocess
import os
from pathlib import Path
import shutil


# Compile all programs with 3 levels of optimization (0, 1 , 2) at x86-64


def run_chain(name, opt):
    binary_location = os.path.join("tests", "generated", opt, "binary", name)
    src_location = os.path.join("tests", "src", name)
    llvm_location = os.path.join("tests", "generated", opt, "compiled_llvm", name)

    cmd = "clang++ -o " + binary_location + ".o -g -O" + opt + " -fno-inline-functions " + src_location + ".cpp -flto -Wl,-plugin-opt,save-temps"
    try:
        args = cmd.split()
        subprocess.check_output(args, stderr=subprocess.DEVNULL)
    except:
        print("Compiling " + name + "failed. Rerun with: " + cmd)

    cmd = "llvm-dis-10 " + binary_location + ".o.0.5.precodegen.bc"
    try:
        args = cmd.split()
        subprocess.check_output(args, stderr=subprocess.DEVNULL)
    except:
        print("Conversion to .ll for " + name + "failed. Rerun with: " + cmd)

    try:
        cmd = "mv " + binary_location + ".o.0.5.precodegen.ll " + llvm_location + ".cmp.ll"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.0.0.preopt.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.0.2.internalize.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.0.4.opt.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.0.5.precodegen.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.o"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + binary_location + ".o.resolution.txt"
        args = cmd.split()
        subprocess.check_output(args)
    except:
        print("Cleaning up " + name + "failed.")


dir_path = Path('tests/generated')
if dir_path.exists() and dir_path.is_dir():
    shutil.rmtree(dir_path)
os.mkdir('tests/generated')
os.mkdir('tests/generated/0')
os.mkdir('tests/generated/0/binary')
os.mkdir('tests/generated/0/compiled_llvm')
os.mkdir('tests/generated/1')
os.mkdir('tests/generated/1/binary')
os.mkdir('tests/generated/1/compiled_llvm')
os.mkdir('tests/generated/2')
os.mkdir('tests/generated/2/binary')
os.mkdir('tests/generated/2/compiled_llvm')

file_list = [file for file in os.listdir("tests/src")]
length = len(file_list) - 3  # not counting apis.cpp and test.hpp and CMakeLists.txt

for idx, file in enumerate(file_list):
    if file.endswith(".cpp") and file != "apis.cpp":
        print("Processing file " + str(idx + 1) + " of " + str(length))
        file_name = file.split(".")[0]
        run_chain(file_name, "0")
        run_chain(file_name, "1")
        run_chain(file_name, "2")
