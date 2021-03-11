#include "test.h"

int main() {
    int a = INT_RAND;
    int b = INT_RAND;
    int c = INT_RAND;
    int d = INT_RAND;
    int e = INT_RAND;
    int f = INT_RAND;
    int g = INT_RAND;
    if (a <97 || a >122) return 1;
    if (b <97 || b >122) return 1;
    if (c <97 || c >122) return 1;
    if (d <97 || d >122) return 1;
    if (e <97 || e >122) return 1;
    if (f <97 || f >122) return 1;
    if (g <97 || g >122) return 1;
    if ((char)(((((a*32)>>2)%26)+65) != 'C')) return 1;
    if ((char)(((((b*23)>>2)%26)+65) != 'I')) return 1;
    if ((char)(((((c*22)>>2)%26)+65) != 'Z')) return 1;
    if ((char)(((((d*42)>>2)%26)+65) != 'U')) return 1;
    if ((char)(((((e*15)>>2)%26)+65) != 'L')) return 1;
    if ((char)(((((f*25)>>2)%26)+65) != 'Q')) return 1;
    if ((char)(((((g*29)>>2)%26)+65) != 'E')) return 1;
    path_goal();
    return 0;
}
