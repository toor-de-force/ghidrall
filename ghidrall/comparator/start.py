import Comparator as c
import os 
if __name__=="__main__":
    # obj = c.Comparator("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/compound_condition_v2.ll","/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/compound_condition_v2.ll")
    # print(obj.callgraph_similarity_iterator)
    # print(obj.memgraph_similarity_iterator)
    # print(obj.callgraph_similarity_string_compression)
    # print(obj.memgraph_similarity_string_compression)
    fn = open("comparator/results.txt","wt")
    with os.scandir("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/") as files:
        for f in files:
            if f.is_file():
                fn.write(f.name + "\n")
                try:
                    obj = c.Comparator(f.path,"/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/"+f.name)
                    fn.write("callgraph_string_compression: "+ str(obj.callgraph_similarity_string_compression)+"\n")
                    fn.write("memgraph_string_compression: "+str(obj.memgraph_similarity_string_compression)+"\n")
                    fn.write("callgraph_iterator: "+ str(obj.callgraph_similarity_iterator)+"\n")
                    fn.write("memgraph_iterator: "+str(obj.memgraph_similarity_iterator)+"\n")
                    fn.write("\n")
                except Exception as e:
                    fn.write(str(e))
                    fn.write("\n")
                    pass
                    
    fn.close()