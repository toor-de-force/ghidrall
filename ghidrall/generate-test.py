#!/usr/bin/env python3

import argparse
import subprocess

parser = argparse.ArgumentParser(description="Generate test binaries and their associated .ll with GLLVM")
parser.add_argument('file', type=str,
                    help='the file to compile')
parser.add_argument("-o", "--optimization",
                    choices=["0", "1", "2"],
                    default="0",
                    help="choose the level of optimization with gclang++")
parser.add_argument("-n", "--name",
                    default="output",
                    help="Assign a name for the upstream .ll file")

args = parser.parse_args()
file = args.file
opt = args.optimization
name = args.name

cmd = "gclang++ -o " + name + " -O" + opt + " " + file
args = cmd.split()
subprocess.check_output(args)

cmd = "get-bc " + name
args = cmd.split()
subprocess.check_output(args)

cmd = "llvm-dis-10 " + name + ".bc"
args = cmd.split()
subprocess.check_output(args)