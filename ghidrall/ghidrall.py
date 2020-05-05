import argparse
import os
import sys

parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument('Path', metavar='path', type=str, help="the path to the target binary")
args = parser.parse_args()
target_binary = args.Path
if not os.path.isfile(target_binary):
    print("Not a valid input file")
    sys.exit()