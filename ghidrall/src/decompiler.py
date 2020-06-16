import r2pipe
import re

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand"]


def decompile_binary(target_binary):
    """Initiates a decompiler object with the target binary and decompiles"""
    decompiler = Decompiler(target_binary)
    return decompiler.functions_pdg


class Decompiler:
    """Decompiler class for interfacing with Radare2 and pulling decompilation information in XML"""

    def __init__(self, target_binary):
        self.r = r2pipe.open(target_binary)
        self.r.cmd('aa')
        self.function_list = [name.split()[-1] for name in self.r.cmd('afl').splitlines()]
        self.functions_pdg = {}
        self.active_function_list = self.find_active_functions('main')

    def find_active_functions(self, target):
        """Find all important functions in call hierarchy from main, excluding instrumentation"""
        active_functions = [target]
        to_visit_functions = [target]
        visited_functions = []
        while len(to_visit_functions) > 0:
            t = to_visit_functions.pop()
            visited_functions.append(t)
            self.r.cmd("s " + t)
            pdgl = self.r.cmd('pdgl')
            pdgl = self.remove_duplicate_blocks(pdgl)
            self.functions_pdg[t] = pdgl
            for function in self.function_list:
                if function == target:
                    pass
                elif function in pdgl:
                    if function not in instrumentation_list and function not in active_functions:
                        active_functions.append(function)
                        if function not in visited_functions:
                            to_visit_functions.append(function)
                        pass
                pass
            pass
        pass
        return active_functions

    def remove_duplicate_blocks(self,pdgl):
        block_start = [m.start() for m in re.finditer('<block>',pdgl)]
        block_end = [m.end() for m in re.finditer('</block>',pdgl)]
        blocks = ['\n\t\t'+pdgl[bs:block_end[idx]] for idx,bs in enumerate(block_start)]
        block_graph_start = pdgl.index('<block_graph>') + len('<block_graph>')
        block_graph_end =  pdgl.index('</block_graph>')
        pdgl_start = pdgl[:block_graph_start]
        pdgl_end = pdgl[block_graph_end:]
        blocks = list(set(blocks)) # remove duplicates
        #verify different labels are used
        unique_blocks = []
        seen_addresses = []
        for block in blocks:
            label_start = [m.end() for m in re.finditer('<address>',block)][0]
            label_end = [m.start() for m in re.finditer('</address>',block)][0]
            address = block[label_start:label_end]
            if address not in seen_addresses:
                unique_blocks.append(block)
                seen_addresses.append(address)
                pass
            pass
        de_duped_blocks = ''.join(unique_blocks)
        de_duped_pdgl = pdgl_start + de_duped_blocks + pdgl_end
        return de_duped_pdgl
