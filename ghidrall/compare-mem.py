import os
import shutil
import networkx as nx
import pydot
import chardet
s = "/home/tkappen/3ASummer/sea-dsa/build/bin/seadsa -sea-dsa=butd-cs -sea-dsa-type-aware -sea-dsa-dot  tests/{type_llvm}/{bin} -sea-dsa-dot-outdir=tests/compare_mem/{directory}/{type}"
# try:
#     shutil.rmtree("./tests/compare_mem")
# except:
#     pass
# os.mkdir("tests/compare_mem", mode=0o777)
class MemoryComp:
    def __init__(self,ghidrall_graph,source_graph):
        self.num_source_nodes = source_graph.number_of_nodes()
        self.num_ghidrall_nodes = ghidrall_graph.number_of_nodes()
        self.num_source_edges = source_graph.number_of_edges()
        self.num_ghidrall_edges = ghidrall_graph.number_of_edges()
        self.num_ghidrall_voids, self.num_ghidrall_Stack, self.num_ghidrall_heap, self.num_ghidrall_Modified,self.num_ghidrall_Read = self.get_counts(ghidrall_graph)
        self.num_source_voids, self.num_source_Stack, self.num_source_heap, self.num_source_Modified,self.num_source_Read = self.get_counts(source_graph)
        self.computed_difference = self.compute_difference()
    
    def compute_difference(self):
        diff = (pow(self.num_source_nodes - self.num_ghidrall_nodes,2) +
        pow(self.num_source_edges - self.num_ghidrall_edges,2) +
        pow(self.num_ghidrall_voids - self.num_source_voids,2) +
        pow(self.num_ghidrall_Stack - self.num_source_Stack,2) +
        pow(self.num_ghidrall_heap - self.num_source_heap,2) +
        pow(self.num_ghidrall_heap - self.num_source_heap,2) +
        pow(self.num_ghidrall_Modified - self.num_source_Modified,2) + 
        pow(self.num_ghidrall_Read - self.num_source_Read,2))
        return pow(diff,0.5)
    def get_counts(self,graph):
        nodes = graph.nodes
        void_count = stack_count = heap_count = modified_count = read_count = 0
        for i in nodes:
            node = nodes.get(i)
            label = node['label']
            if "void" in label:
                void_count = void_count + 1
            if "S" in label: 
                stack_count = stack_count + 1
            if "H" in label:
                heap_count = heap_count + 1
            if "M" in label:
                modified_count = modified_count + 1
            if "R" in label:
                read_count = read_count + 1
        return void_count, stack_count,heap_count,modified_count,read_count
    pass 
ghidrall_graphs = {}
source_graphs = {}
isNew = False
with os.scandir("tests/results") as ghidrall_bins:
    for ghidrall_bin in ghidrall_bins:
        if ghidrall_bin.is_file():
            n = ghidrall_bin.name.replace(".ll","")
            if isNew:
                os.mkdir("tests/compare_mem/"+n, mode=0o777)
                os.mkdir("tests/compare_mem/"+n+"/ghidrall", mode=0o777)
                c = s.format(bin = n+".ll",directory=n,type="ghidrall",type_llvm="results")
                os.system(c)
            with os.scandir("tests/compare_mem/"+n+"/ghidrall") as g_dots:
                ghidrall_graphs[n] = {}
                for g_dot in g_dots:
                    ghidrall_graphs[n][g_dot.name] = pydot.graph_from_dot_file("tests/compare_mem/"+n+"/ghidrall/"+g_dot.name)
                    ghidrall_graphs[n][g_dot.name] = [nx.nx_pydot.from_pydot(i) for i in ghidrall_graphs[n][g_dot.name]]
with os.scandir("tests/source_llvm") as source_bins:
    for source_bin in source_bins:
        if source_bin.is_file():
            n = source_bin.name.replace(".ll","")
            try:
                if isNew:
                    os.mkdir("tests/compare_mem/"+n+"/source", mode=0o777)
                    c = s.format(bin = n+".ll",directory=n,type="source",type_llvm="source_llvm")
                    os.system(c)
                with os.scandir("tests/compare_mem/"+n+"/source") as s_dots:
                    source_graphs[n] = {}
                    for s_dot in s_dots:
                        source_graphs[n][s_dot.name] = pydot.graph_from_dot_file("tests/compare_mem/"+n+"/source/"+s_dot.name)
                        source_graphs[n][s_dot.name] = [nx.nx_pydot.from_pydot(i) for i in source_graphs[n][s_dot.name]]
            except:
                pass
file_list = [
    "bad_diff_func",
    "bound_loop_with_var",
    "compound_condition",
    "compound_condition_param",
    "compound_condition_param_v2",
    "compound_condition_v2",
    "compound_condition_v3",
    "condcall_one",
    "condcall_two",
    "empty",
    "exclusive_ite",
    "exclusive_ite_goal_in_else",
    "goal_diff_func",
    #"global_var",
    #"global_var_updates",
    #"global_var_nongoal",
    "independent_ite",
    "independent_ite_param",
    "input_inside_bound_loop",
    "inter_func_narrow_to_wide_constraint",
    "inter_func_param",
    "inter_func_wide_to_narrow_constraint",
    "inter_rv",
    "invalid_compound_condition",
    "invalid_compound_condition_param",
    "invalid_compound_condition_v2",
    "invalid_condition",
    "invalid_inter_func",
    "invalid_nested_conditions",
    "linear_flow",
    "loop_even_odd",
    "loop_even_odd_nongoal",
    "multi_call_inter_cond",
    "multi_call_inter_cond_else",
    "multi_call_inter_seq",
    "multiple_ite",
    "multivar_compound_condition",
    "nested_condition",
    "nested_condition_v2",
    "nested_condition_v3",
    "nested_ite_condition",
    "nested_ite_condition_param",
    "nested_ite_condition_param_v2",
    "nested_ite_condition_v2",
    "nested_loop",
    #"oo_simple_goal",
    #"oo_simple_nongoal",
    #"oo_virtual_func_goal",
    #"oo_virtual_func_nongoal",
    "param_n_var_conpound_condition",
    "rv_cond",
    "rv_same_var",
    "rv_seq",
    "rv_seq_v1",
    "rv_seq_v2",
    "seq_call_five",
    "seq_call_four",
    "seq_call_one",
    "seq_call_three",
    "seq_call_two",
    "seq_v4",
    "single_condition",
    "single_condition_param",
    "single_condition_param_v2",
    "single_condition_v2",
    "unbound_loop_with_var",
    "var_values",
    "var_values_param"]
#Compare graphs
comparisons = []
for file in file_list:
    g = ghidrall_graphs[file]
    s = source_graphs[file]
    g = [i[0] for i in [*g.values()]]
    s = [i[0] for i in [*s.values()]]
    complete_mem_g = nx.disjoint_union_all(g)
    complete_mem_s = nx.disjoint_union_all(s)
    comparisons.append(MemoryComp(complete_mem_g,complete_mem_s).computed_difference)
    pass
print(comparisons)