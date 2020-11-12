#!/usr/bin/env python3
import subprocess
import os
from pathlib import Path
import shutil


def run_chain(path, name, opt):
    try:
        cmd = "gclang++ -o " + name + ".o -O" + opt + " " + path
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "get-bc " + name + ".o"
        args = cmd.split()
        subprocess.check_output(args)

        cmd = "llvm-dis-10 " + name + ".o.bc"
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

