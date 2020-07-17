import networkx as nx
import pydot
import os
import shutil
import CallGraphComp as cgc
import MemGraphComp as mgc
import compression_schemes as schemes
mem_graph = "/home/tkappen/3ASummer/sea-dsa/build/bin/seadsa -sea-dsa=butd-cs -sea-dsa-type-aware -sea-dsa-dot  {path} -sea-dsa-dot-outdir=comparator/mem_results"
call_graph = "/home/tkappen/3ASummer/sea-dsa/build/bin/seadsa  --sea-dsa-callgraph-dot {path} -sea-dsa-dot-outdir=comparator/call_results"
class Comparator:
    #Takes the path to each llvm file and computes a similarity score
    def __init__(self,source_1_path,source_2_path):
        self.similarity_percentage = 0
        self.setup()
        self.g1_call = self.get_call_graph(source_1_path)
        self.g1_mem = self.get_mem_graph(source_1_path)
        self.setup()
        self.g2_call = self.get_call_graph(source_2_path)
        self.g2_mem = self.get_mem_graph(source_2_path)
        self.calculate_similarity_percentage()
    pass
    def get_call_graph(self,path):
        call = call_graph.format(path=path)
        os.system(call)
        p = pydot.graph_from_dot_file("comparator/call_results/callgraph.dot")
        callgraph_nx =  nx.nx_pydot.from_pydot(p[0])
        return callgraph_nx
    def get_mem_graph(self,path):
        call = mem_graph.format(path=path)
        os.system(call)
        mem_graphs = []
        with os.scandir("comparator/mem_results") as m:
            for mem_dot in m:
                p = pydot.graph_from_dot_file("comparator/mem_results/"+mem_dot.name)
                memgraph_nx =  nx.nx_pydot.from_pydot(p[0])
                mem_graphs.append(memgraph_nx)
        complete_mem = nx.disjoint_union_all(mem_graphs)
        return complete_mem
    def calculate_similarity_percentage(self):
        self.use_call_graphs()
        self.use_mem_graphs()
        pass
    def use_call_graphs(self):
        # TODO: Apply WL kernel. How to handle different dimensions issue?
        scheme = schemes.StringCompressionScheme()
        call_comp = cgc.CallGraphComp(self.g1_call,self.g2_call,scheme)
        self.callgraph_similarity = call_comp.score
        pass
    def use_mem_graphs(self):
        scheme = schemes.StringCompressionScheme()
        mem_comp = mgc.MemGraphCompare(self.g1_mem,self.g2_mem,scheme)
        self.memgraph_similarity = mem_comp.score
        pass
    def setup(self):
        self.cleanup()
        os.mkdir("comparator/mem_results", mode=0o777)
        os.mkdir("comparator/call_results", mode=0o777)
        pass
    def cleanup(self):
        try:
            shutil.rmtree("comparator/mem_results")
        except:
            pass
        pass
        try:
            shutil.rmtree("comparator/call_results")
        except:
            pass
pass