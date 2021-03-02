#!/usr/bin/env python3

import subprocess
import os
from pathlib import Path
import shutil
import yaml
from multiprocessing import Pool

top_dir = 'tests/generated'
function_list_file = 'tests/function_includes.yml'


def run_ghidrall(test_name, command_name, command, optimization):
    try:
        args = command.split()
        subprocess.check_output(args, stderr=subprocess.DEVNULL, timeout=30)
    except:
        print(f"{command_name} failed, rerun with:")
        print(command)
        return "failed", test_name + "_" + command_name + "_" + optimization
    else:
        return "succeeded", test_name + "_" + command_name + "_" + optimization


if __name__ == "__main__":
    lifting_failures = []
    success = []
    pool = Pool(6)

    with open(Path(function_list_file), 'r') as f:
        function_list = yaml.load(f)

    for opt in ["0", "1", "2"]:
        goal_dir = Path(os.path.join(top_dir, opt, 'goal'))
        if goal_dir.exists() and goal_dir.is_dir():
            shutil.rmtree(goal_dir)
        os.mkdir(goal_dir)

        nongoal_dir = Path(os.path.join(top_dir, opt, 'nongoal'))
        if nongoal_dir.exists() and nongoal_dir.is_dir():
            shutil.rmtree(nongoal_dir)
        os.mkdir(nongoal_dir)

        goal_no_option_dir = Path(os.path.join(goal_dir, 'no_option'))
        if goal_no_option_dir.exists() and goal_no_option_dir.is_dir():
            shutil.rmtree(goal_no_option_dir)
        os.mkdir(goal_no_option_dir)

        goal_single_struct_dir = Path(os.path.join(goal_dir, 'single_struct'))
        if goal_single_struct_dir.exists() and goal_single_struct_dir.is_dir():
            shutil.rmtree(goal_single_struct_dir)
        os.mkdir(goal_single_struct_dir)

        goal_byte_addressable_dir = Path(os.path.join(goal_dir, 'byte_addressable'))
        if goal_byte_addressable_dir.exists() and goal_byte_addressable_dir.is_dir():
            shutil.rmtree(goal_byte_addressable_dir)
        os.mkdir(goal_byte_addressable_dir)

        nongoal_no_option_dir = Path(os.path.join(nongoal_dir, 'no_option'))
        if nongoal_no_option_dir.exists() and nongoal_no_option_dir.is_dir():
            shutil.rmtree(nongoal_no_option_dir)
        os.mkdir(nongoal_no_option_dir)

        nongoal_single_struct_dir = Path(os.path.join(nongoal_dir, 'single_struct'))
        if nongoal_single_struct_dir.exists() and nongoal_single_struct_dir.is_dir():
            shutil.rmtree(nongoal_single_struct_dir)
        os.mkdir(nongoal_single_struct_dir)

        nongoal_byte_addressable_dir = Path(os.path.join(nongoal_dir, 'byte_addressable'))
        if nongoal_byte_addressable_dir.exists() and nongoal_byte_addressable_dir.is_dir():
            shutil.rmtree(nongoal_byte_addressable_dir)
        os.mkdir(nongoal_byte_addressable_dir)

        binary_dir = os.path.join(top_dir, opt, "binary")
        file_list = [file for file in os.listdir(binary_dir)]

        for idx, file in enumerate(file_list):
            print("Resolving " + file + ", " + str(idx + 1) + " of " + str(len(file_list)) + " at optimization " + opt)
            name = file.split('.')[0]
            functions = ",".join(function_list[name])
            binary_location = os.path.join(binary_dir, file)

            goal_cmd = f"python3 ghidrall.py -f {functions} {binary_location}"
            nongoal_cmd = f"python3 ghidrall.py --nongoal -f {functions} {binary_location}"

            cmds = {"goal_no_option": f"{goal_cmd} -o {os.path.join(goal_no_option_dir, name + '.ll')}",
                    "goal_single_struct": f"{goal_cmd} -l single_struct -o {os.path.join(goal_single_struct_dir, name + '.ll')}",
                    "goal_byte_addressable": f"{goal_cmd} -l byte_addressable -o {os.path.join(goal_byte_addressable_dir, name + '.ll')}",
                    "nongoal_no_option": f"{nongoal_cmd} -o {os.path.join(nongoal_no_option_dir, name + '.ll')}",
                    "nongoal_single_struct": f"{nongoal_cmd} -l single_struct -o {os.path.join(nongoal_single_struct_dir, name + '.ll')}",
                    "nongoal_byte_addressable": f"{nongoal_cmd} -l byte_addressable -o {os.path.join(nongoal_byte_addressable_dir, name + '.ll')}"
                    }

            input_list = [[name, key, value, opt] for key, value in cmds.items()]
            results = pool.starmap(run_ghidrall, input_list)
            for result, run in results:
                if result == "succeeded":
                    success.append(run)
                else:
                    lifting_failures.append(run)

    print(str(len(success)) + " files were lifted successfully")
    print("The following " + str(len(lifting_failures)) + " files failed:")
    for value in lifting_failures:
        print("    " + value)
