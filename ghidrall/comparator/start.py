import Comparator as c
import os 
if __name__=="__main__":
    obj = c.Comparator("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/compound_condition_param_v2.ll","/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/compound_condition_param_v2.ll")
    print(obj.callgraph_similarity)
    print(obj.memgraph_similarity)
    # fn = open("comparator/results.txt","wt")
    # with os.scandir("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/") as files:
    #     for f in files:
    #         if f.is_file():
    #             fn.write(f.name + "\n")
    #             obj = c.Comparator(f.path,"/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/"+f.name)
    #             fn.write("callgraph: "+ str(obj.callgraph_similarity)+"\n")
    #             fn.write("memgraph: "+str(obj.memgraph_similarity)+"\n")
    #             fn.write("\n")
    # fn.close()
    # call_graph = "/home/tkappen/3ASummer/sea-dsa/build/bin/seadsa --sea-dsa-callgraph-dot {path} -sea-dsa-dot-outdir=comparator/call_results"
    # with os.scandir("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/") as files:
    #     for f in files:
    #         if f.is_file():
    #             c = call_graph.format(path=f.path)
    #             os.system(c)
    pass