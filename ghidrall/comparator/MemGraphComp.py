import networkx as nx

class MemGraphCompare:
    def __init__(self,G1,G2):
        g1_stack = self.count_stack_size(G1)
        g2_stack = self.count_stack_size(G2)
        pass
    def count_stack_size(self,g):
        ctr = 0
        for i in g.nodes:
            node = g.nodes.get(i)
            label = node['label']
            if "S" in label: 
                ctr = ctr + 1
            pass
        return ctr
    pass