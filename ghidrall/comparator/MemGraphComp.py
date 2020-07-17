import networkx as nx
import WL_Wrapper as w
class MemGraphCompare(w.WL_Wrapper):
    def __init__(self,G1, G2,scheme):
        super().__init__(G1,G2,scheme)