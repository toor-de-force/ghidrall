import WL_Wrapper as w
import networkx as nx
import copy
class CallGraphComp(w.WL_Wrapper):
    def __init__(self,G1,G2,scheme):
        G1 = self.clean_up_labels(G1)
        G2 = self.clean_up_labels(G2)
        super().__init__(G1,G2,scheme)
    def clean_up_labels(self,g):
        for node in g.nodes:
            try:
                label = g.nodes[node]['label']
                label = label.replace("__","_")
                if label == '"{nd}"':
                    label = '"{rand}"'
                elif label == '"{_Z9path_goalv}"':
                    label = '"{verifier.error}"'
                elif '_Z' in label and 'func' in label:
                    temp = label.replace("{","")
                    temp = temp.replace("}","")
                    temp = temp.replace("\"","")
                    r = temp.find('func')
                    temp = temp[r:]
                    s = temp[4:]
                    s = s.replace("i","_int")
                    s = s.replace("b","_bool")
                    s = s.replace("c","_char")
                    label = '\"{sym.func'+s+'}\"'
                    pass
                g.nodes[node]['label'] = label
            except KeyError:
                pass
        return g