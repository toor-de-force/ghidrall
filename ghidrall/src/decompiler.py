import r2pipe

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand",
                        "sym.example_constrain_ret_int", "sym.example_constrain_arg_int__int"]


def decompile_binary(target_binary, entry):
    """Initiates a decompiler object with the target binary and decompiles"""
    decompiler = Decompiler(target_binary, entry)
    return decompiler


class Decompiler:
    """Decompiler class for interfacing with Radare2 and pulling decompilation information in XML"""

    def __init__(self, target_binary, entry):
        self.r = r2pipe.open(target_binary)
        self.r.cmd('aa')
        self.function_list = [name.split()[-1] for name in self.r.cmd('afl').splitlines()]
        self.functions_pdg = {}
        self.pdgd = self.get_pdgd(entry)
        self.active_function_list = self.find_active_functions(entry)

    def find_active_functions(self, target):
        """Find all important functions in call hierarchy from entry, excluding instrumentation for pharos"""
        try:
            active_functions = [target]
            to_visit_functions = [target]
            visited_functions = []
            while len(to_visit_functions) > 0:
                t = to_visit_functions.pop()
                visited_functions.append(t)
                self.r.cmd("s " + t)
                pdgl = self.r.cmd('pdgl')
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
            for function in self.function_list:
                if "func" in function and function not in active_functions:
                    self.r.cmd("s " + function)
                    pdgl = self.r.cmd('pdgl')
                    self.functions_pdg[function] = pdgl
                    active_functions.append(function)
            return active_functions
        except:
            self.r.quit()

    def get_pdgd(self, entry):
        self.r.cmd("s " + entry)
        return self.r.cmd('pdgd')

