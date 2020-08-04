import src.decompiler as decompiler
import src.lifter as lifter
import src.verifier as verifier
import os
import sys
import datetime
import argparse
import signal


def signal_handler(signum, frame):
    raise TimeoutError


parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
parser.add_argument("-l", "--locals", choices=["single_struct", "no_option"], default="byte_addressable",
                    help="choose how local variables are displayed")
parser.add_argument("-n", "--nongoal", action="store_true", help="Lift solver heuristics for anti-goals")

args = parser.parse_args()
lifting_options = {"locals": args.locals,
                   "solver": "pharos",
                   "entry": "main",
                   "cgc": True,
                   "nongoal": args.nongoal}

begin_time = datetime.datetime.now()

file_path = "./tests/cgc-tests/"

failures = {}

file_list = [file for file in os.listdir(file_path) if os.path.isfile(os.path.join(file_path, file))]
file_list.sort()
print(len(file_list))
file_list = file_list[500:]

if not os.path.exists("tests/cgc-tests/results"):
    os.mkdir("tests/cgc-tests/results", mode=0o777)

bad_list = ["Azurad",
            "Azurad_patched"]

for file in file_list:
    if file in bad_list:
        continue
    try:
        signal.signal(signal.SIGALRM, signal_handler)
        signal.alarm(10)
        print("Decompiling " + file + "...", end="")
        filename = file_path + file
        decompile_info = decompiler.decompile_binary(filename, lifting_options.get("entry"))
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
        results = file_path + "results/"
        with open(results + file + ".ll", 'w') as f:
            f.write(str(module))
            f.close()
    except:
        print("")
        print("FAILED")
        failures[file] = sys.exc_info()[1]

print("The following files failed:")
for key, value in failures.items():
    print("\t" + key)

print("Time to lift: " + str(datetime.datetime.now() - begin_time))
