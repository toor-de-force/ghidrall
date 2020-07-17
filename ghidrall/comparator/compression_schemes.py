import networkx as nx
import multiset as m
import json
class IteratorScheme:
    def __init__(self):
        self.compresser_ctr = 0
        self.seen_tuples = {}
    def reset(self):
        self.compresser_ctr = 0
        self.seen_tuples = {}
        return self
    def set_initial_colours(self,g):
        initial_wl_colour = {}
        for node in g.nodes:
            if g.degree[node] > self.compresser_ctr:
                self.compresser_ctr = g.degree[node]
            initial_wl_colour[node] = g.degree[node]
        nx.set_node_attributes(g,initial_wl_colour,"wl_colour")
        return g
    def set_initial_multiset(self,g):
        multiset = {}
        for node in g.nodes:
            multiset[node] = m.Multiset()
            for neighbor in nx.neighbors(g,node):
                multiset[node].add(g.nodes[neighbor]["wl_colour"])
                pass
        nx.set_node_attributes(g,multiset,"neighbour_multiset")
        return g
    def compress_old_colour_and_multiset(self, old_label,multiset):
        tupe = (old_label,json.dumps(multiset._elements))
        if tupe in self.seen_tuples.keys():
            return self.seen_tuples[tupe]
        else:
            self.compresser_ctr = self.compresser_ctr + 1
            self.seen_tuples[tupe] = self.compresser_ctr
        return self.compresser_ctr
    pass
class StringCompressionScheme:
    def reset(self):
        return self
    def set_initial_colours(self,g):
        initial_wl_colour = {}
        for node in g.nodes:
            try:
                label = g.nodes[node]['label']
            except KeyError:
                label = '0'
                pass
            initial_wl_colour[node] = hash(label)
        nx.set_node_attributes(g,initial_wl_colour,"wl_colour")
        return g
    def set_initial_multiset(self,g):
        multiset = {}
        for node in g.nodes:
            multiset[node] = m.Multiset()
            for neighbor in nx.neighbors(g,node):
                multiset[node].add(g.nodes[neighbor]["wl_colour"])
                pass
        nx.set_node_attributes(g,multiset,"neighbour_multiset")
        return g
    def compress_old_colour_and_multiset(self, old_label,multiset):
        tupe = (old_label,json.dumps(multiset._elements))
        return hash(tupe)
    pass