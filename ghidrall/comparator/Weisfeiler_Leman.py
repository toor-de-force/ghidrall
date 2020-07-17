import networkx as nx
import multiset as m
import copy
import json
class WL:
    def __init__(self,g):
        self.compresser_ctr = 0
        self.seen_tuples = {}
        self.histogram = {}
        self.histogram_vectors = []
        self.graph = g
        self.setup()
        self.to_canonical()
    
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
    def setup(self):
        self.graph = self.set_initial_colours(self.graph)
        self.graph = self.set_initial_multiset(self.graph)
        self.update_histogram()
    def to_canonical(self):
        N = len(self.graph.nodes())
        number_of_iterations = N
        new_labels = {}
        for _ in range(number_of_iterations):
            for i in self.graph.nodes():
                new_labels[i] = self.get_new_label(i)
            nx.set_node_attributes(self.graph,new_labels,"wl_colour")
            self.update_multisets()
            self.update_histogram()
        pass
    def get_new_label(self,node):
        old_colour = nx.get_node_attributes(self.graph,"wl_colour")[node]
        old_multiset = nx.get_node_attributes(self.graph,"neighbour_multiset")[node]
        new_label = self.compress_old_colour_and_multiset(old_colour,old_multiset)
        return new_label
    def compress_old_colour_and_multiset(self, old_label,multiset):
        tupe = (old_label,json.dumps(multiset._elements))
        if tupe in self.seen_tuples.keys():
            return self.seen_tuples[tupe]
        else:
            self.compresser_ctr = self.compresser_ctr + 1
            self.seen_tuples[tupe] = self.compresser_ctr
        return self.compresser_ctr
    def update_multisets(self):
        multiset = {}
        for node in self.graph.nodes:
            multiset[node] = m.Multiset()
            for neighbor in nx.neighbors(self.graph,node):
                multiset[node].add(self.graph.nodes[neighbor]["wl_colour"])
                pass
        nx.set_node_attributes(self.graph,multiset,"neighbour_multiset")
    def update_histogram(self):
        self.histogram = {}
        for node in self.graph.nodes:
            colour = self.graph.nodes()[node]["wl_colour"]
            if colour not in self.histogram.keys():
                self.histogram[colour] = 1
            else:
                self.histogram[colour] = self.histogram[colour] + 1
        self.add_vector()
        pass
    def add_vector(self):
        self.histogram_vectors.append(self.histogram)
        pass
    pass
