import r2pipe

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand"]


def decompile_binary(target_binary):
    """Initiates a decompiler object with the target binary and decompiles"""
    decompiler = Decompiler(target_binary)
    return decompiler


class Decompiler:
    """Decompiler class for interfacing with Radare2 and pulling decompilation information in XML"""

    def __init__(self, target_binary):
        self.r = r2pipe.open(target_binary)
        self.r.cmd('aa')
        self.function_list = [name.split()[-1] for name in self.r.cmd('afl').splitlines()]
        self.functions_pdg = {}
        self.active_function_list = self.find_active_functions('main', [])
        self.functions_afv = self.find_functions_afv()

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

    def find_functions_afv(self):
        functions_afv = {}
        for function in self.active_function_list:
            self.r.cmd("aa")
            self.r.cmd("s " + function)
            afv = self.r.cmd("afv")
            functions_afv[function] = {line.split(" ")[2]: StackValue(line) if len(line) != 0 else None for line in afv.splitlines()}
        return functions_afv


class StackValue:
    def __init__(self, afv):
        lines = afv.split(" ")
        self.name = lines[2]
        if "-" in lines[-1]:
            location = lines[-1].split("-")
        else:
            location = lines[-1].split("+")
        self.ptr = location[0][1:]
        if self.ptr == "bp" or self.ptr == "sp":
            self.address = location[1]
