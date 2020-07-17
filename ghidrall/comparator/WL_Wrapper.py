import Weisfeiler_Leman as w
class WL_Wrapper(w.WL):
    def __init__(self, G1, G2,scheme):
        self.g1 = w.WL(G1,scheme)
        self.g2 = w.WL(G2,scheme)
        self.score = self.get_score()
        pass
    def get_score(self):
        iterations = len(self.g1.histogram_vectors)
        score = 0
        if iterations > len(self.g2.histogram_vectors):
            iterations = len(self.g2.histogram_vectors)
        weight = 1/iterations
        for iteration in range(iterations):
            vector1, vector2 = self.get_vectors(iteration)
            score = score + weight*self.Kernel(vector1,vector2)
        return score
    def Kernel(self,v1,v2):
        mag1 = self.vector_magnitude(list(v1.values()))
        mag2 = self.vector_magnitude(list(v2.values()))
        dot_product = self.get_dot_product(v1,v2)
        kernel_value = (dot_product)/(mag1*mag2)
        return kernel_value
    def get_dot_product(self,v1,v2):
        prod = 0
        for k,v in v1.items():
            prod = prod + v1[k]*v2[k]
        return prod
    def vector_magnitude(self,vector):
        mag = 0
        for v in vector:
            mag = mag + pow(v,2)
        mag = pow(mag,0.5)
        return mag
    def get_vectors(self,iteration):
        vector1 = {}
        vector2 = {}
        added_keys_1 = []
        added_keys_2 = []
        keys1 = list(self.g1.histogram_vectors[iteration].keys())
        keys2 = list(self.g2.histogram_vectors[iteration].keys())
        total_keys = keys1 + keys2
        h1 = self.g1.histogram_vectors[iteration]
        h2 = self.g2.histogram_vectors[iteration]
        for key in total_keys:
            if key not in added_keys_1:
                try:
                    vector1[key] = h1[key]
                except KeyError:
                    vector1[key] = 0
                added_keys_1.append(key)
            if key not in added_keys_2:
                try:
                    vector2[key]=h2[key]
                except KeyError:
                    vector2[key]= 0
                added_keys_2.append(key)
            pass
        return vector1, vector2
    pass