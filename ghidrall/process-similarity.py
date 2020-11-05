from .comparator import Comparator as c
import argparse

parser = argparse.ArgumentParser(description="Generate test binaries and their associated .ll with GLLVM")
parser.add_argument('file1', type=str,
                    help='the first file to compare')
parser.add_argument('file2', type=str,
                    help='the second file to compare')

args = parser.parse_args()

obj = c.Comparator("args.file1","args.file2")
obj.use_call_graphs()
obj.use_mem_graphs()
obj.use_control_flow_graphs()
obj.run()
obj.output()
