#include "test.hpp"

int main() {
    char failure = 0;
    int a_1 = INT_RAND;
    int a_2 = INT_RAND;
    int a_3 = INT_RAND;
    int a_4 = INT_RAND;
    int a_5 = INT_RAND;
    int a_6 = INT_RAND;
    int a_7 = INT_RAND;

    if ((char)(((((a_1)*32)>>2)%26)+65) != 'C') failure = 1;
    if ((char)(((((a_2)*23)>>2)%26)+65) != 'I') failure = 1;
    if ((char)(((((a_3)*22)>>2)%26)+65) != 'Z') failure = 1;
    if ((char)(((((a_4)*42)>>2)%26)+65) != 'U') failure = 1;
    if ((char)(((((a_5)*15)>>2)%26)+65) != 'L') failure = 1;
    if ((char)(((((a_6)*25)>>2)%26)+65) != 'Q') failure = 1;
    if ((char)(((((a_7)*29)>>2)%26)+65) != 'E') failure = 1;
    if (!failure){
        path_goal();
    }
    return 0;
}
