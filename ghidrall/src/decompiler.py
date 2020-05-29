import r2pipe

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
        self.active_function_list = self.find_active_functions('main', [])

    def find_active_functions(self, target, active_functions):
        """Find all important functions in call hierarchy from main, excluding instrumentation"""
        active_functions.append(target)
        self.r.cmd("s " + target)
        pdg = self.r.cmd('pdgl')
        for function in self.function_list:
            if function == target:
                pass
            elif function in pdg:
                if function not in instrumentation_list:
                    active_functions = self.find_active_functions(function, active_functions)
        self.functions_pdg[target] = pdg
        return active_functions
