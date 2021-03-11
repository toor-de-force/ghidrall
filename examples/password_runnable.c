#include <stdio.h>
#include <string.h>
#include "test.h"

int main(int argc, char *argv[]) {
    char input[8];
    memcpy(input, argv[1], 8);
    if (!(input[0]>=97 && input[0]<=122)) return 1;
    if (!(input[1]>=97 && input[1]<=122)) return 1;
    if (!(input[2]>=97 && input[2]<=122)) return 1;
    if (!(input[3] >=97 && input[3] <=122)) return 1;
    if (!(input[4] >=97 && input[4] <=122)) return 1;
    if (!(input[5] >=97 && input[5] <=122)) return 1;
    if (!(input[6] >=97 && input[6] <=122)) return 1;
    if ((char)((((((int)input[0])*32)>>2)%26)+65) != 'C') return 1;
    if ((char)((((((int)input[1])*23)>>2)%26)+65) != 'I') return 1;
    if ((char)((((((int)input[2])*22)>>2)%26)+65) != 'Z') return 1;
    if ((char)((((((int)input[3])*42)>>2)%26)+65) != 'U') return 1;
    if ((char)((((((int)input[4])*15)>>2)%26)+65) != 'L') return 1;
    if ((char)((((((int)input[5])*25)>>2)%26)+65) != 'Q') return 1;
    if ((char)((((((int)input[6])*29)>>2)%26)+65) != 'E') return 1;
    path_goal();
    printf("Success");
    return 0;
}
// 
