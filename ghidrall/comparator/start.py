import Comparator as c
import os 
if __name__=="__main__":
    # obj = c.Comparator("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/bad_diff_func.ll","/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/bad_diff_func.ll")
    fn = open("comparator/results.txt","wt")
    with os.scandir("/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/results/") as files:
        for f in files:
            if f.is_file():
                fn.write(f.name + "\n")
                obj = c.Comparator(f.path,"/home/tkappen/3ASummer/Ghidrall/ghidrall/tests/source_llvm/"+f.name)
                fn.write("callgraph: "+ str(obj.callgraph_similarity)+"\n")
                fn.write("memgraph: "+str(obj.memgraph_similarity)+"\n")
                fn.write("\n")
    fn.close()
    pass