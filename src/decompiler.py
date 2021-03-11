import rzpipe
import pydot
import xml.etree.ElementTree as et


def decompile_binary(target_binary, entry, functions):
    """Initiates a decompiler object with the target binary and decompiles"""
    decompiler = Decompiler(target_binary, entry, functions)
    return decompiler


class Decompiler:
    """Decompiler class for interfacing with Radare2 and pulling decompilation information in XML"""

    def __init__(self, target_binary, entry, functions):
        self.target_binary = target_binary
        self.r = rzpipe.open(target_binary)
        self.r_backup = rzpipe.open(target_binary)  # Getting the call graph changes symbol names
        self.r_backup.cmd("aa")
        self.address_to_function_map = self.get_function_map()
        self.function_to_address_map = {v: k for k, v in self.address_to_function_map.items()}
        self.global_pdgd = self.r_backup.cmd('pdgd')
        if not functions:  # check if there is a user supplied list of functions to lift
            self.active_functions_dict = self.find_active_functions(entry)
        else:
            self.active_functions_dict = {}
            for func in self.address_to_function_map.values():
                # Functions we have been told to lift
                if func in functions:
                    self.active_functions_dict[func] = "active"
                # the rest, which we will declare but not define
                else:
                    self.active_functions_dict[func] = "inactive"
            for func in functions:
                if func not in self.active_functions_dict:
                    self.active_functions_dict[func] = "active"
        self.functions_pdgl = {function: self.get_pdgl(function) for function in self.active_functions_dict.keys()}
        self.functions_pdgd = {function: self.get_pdgd(function) for function in self.active_functions_dict.keys()}


    def find_active_functions(self, entry):
        self.r.cmd('aaa')
        g = pydot.graph_from_dot_data(self.r.cmd('agCd'))
        nodes = g[0].get_nodes()
        visited = {}
        to_visit = []
        for node in nodes:
            address = node.get_name().strip('"')
            if "0x" not in address:  # Skipping over nodes that do not have an address name
                continue
            elif address not in self.address_to_function_map.keys():  # Skipping over system calls
                continue
            if self.address_to_function_map[address] == entry or self.address_to_function_map[address] == "sym." + entry:
                to_visit.append(address)
        if not to_visit:
            raise Exception("Specified entry not found")
        edges = g[0].get_edges()
        new_function_map = self.get_function_map()
        while to_visit:
            target = to_visit.pop()
            for edge in edges:
                source = edge.get_source().strip('"')
                dest = edge.get_destination().strip('"')
                if source == target and new_function_map[dest] not in visited:
                    to_visit.append(dest)
            visited[new_function_map[target]] = self.address_to_function_map[target]
        return visited

    def get_pdgd(self, func):
        self.r_backup.cmd('s ' + func)
        return self.r_backup.cmd('pdgd')

    def get_pdgl(self, function):
        if function == 'loc.imp._ITM_deregisterTMCloneTable':
            return None
        self.r_backup.cmd("aa")
        self.r_backup.cmd("s " + function)
        response = self.r_backup.cmd('pdgl')
        xml = et.fromstring(response)
        if xml.find(".//signature").get("name") != function:
            # rizin can't find the function, it was probably optimized out
            return None
        else:
            return response

    def get_function_map(self):
        self.r_backup.cmd('aa')
        afl = self.r_backup.cmd('afl')
        functions = {}
        for line in afl.splitlines():
            words = line.split()
            functions[words[0]] = words[-1]
        return functions
