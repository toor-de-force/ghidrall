#include "test.hpp"
int main(int argc, char* argv[]) {
  path_start();
  if (argc == 0){
    int k = 1;
  }else{
    int k = 2;
  }
  int a = argv[0][0];
  int b = a + 2;
  if ((a == 4) && (b==5)){
      path_goal();
  }
  path_goal();
}
