#!/usr/bin/env python3
import subprocess
import os
from pathlib import Path
import shutil


# clang++ -o x x.cpp -flto -Wl,-plugin-opt,save-temps
# llvm-dis-10 x.0.5.precodegen.bc
# this generates our x.compile.ll

def run_chain(path, name, opt):
    try:
        name = name + "_" + opt
        cmd = "clang++ -o " + name + ".o -O" + opt + " " + path + " -flto -Wl,-plugin-opt,save-temps"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "llvm-dis-10 " + name + ".o.0.5.precodegen.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "mv " + name + ".o " + name
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "mv " + name + ".o.0.5.precodegen.ll " + name + ".cmp.ll"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.0.0.preopt.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.0.2.internalize.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.0.4.opt.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.0.5.precodegen.bc"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.o"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "rm " + name + ".o.resolution.txt"
        args = cmd.split()
        subprocess.check_output(args)
    except:
        pass


dir_path = Path('results')
if dir_path.exists() and dir_path.is_dir():
    shutil.rmtree(dir_path)
os.mkdir('results')
os.chdir('results')
for file in os.listdir("../latest_tests/src"):
    if file.endswith(".cpp") and file != "apis.cpp":
        file_name = file.split(".")[0]
        file_path = os.path.join("../latest_tests/src", file)
        run_chain(file_path, file_name, "0")
        run_chain(file_path, file_name, "1")
        run_chain(file_path, file_name, "2")
