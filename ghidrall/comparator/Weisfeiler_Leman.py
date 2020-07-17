import networkx as nx
import multiset as m 
import json
class WL:
    def __init__(self,g,scheme):
        self.histogram_vectors = []
        self.scheme = scheme
        self.graph = g
        self.setup()
        self.to_canonical()
    def setup(self):
        self.graph = self.scheme.set_initial_colours(self.graph)
        self.graph = self.scheme.set_initial_multiset(self.graph)
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
        new_label = self.scheme.compress_old_colour_and_multiset(old_colour,old_multiset)
        return new_label
    def update_multisets(self):
        multiset = {}
        for node in self.graph.nodes:
            multiset[node] = m.Multiset()
            for neighbor in nx.neighbors(self.graph,node):
                multiset[node].add(self.graph.nodes[neighbor]["wl_colour"])
                pass
        nx.set_node_attributes(self.graph,multiset,"neighbour_multiset")
    def update_histogram(self):
        histogram = {}
        for node in self.graph.nodes:
            colour = self.graph.nodes()[node]["wl_colour"]
            if colour not in histogram.keys():
                histogram[colour] = 1
            else:
                histogram[colour] = histogram[colour] + 1
        self.add_vector(histogram)
        pass
    def add_vector(self,histogram):
        self.histogram_vectors.append(histogram)
        pass
    pass
