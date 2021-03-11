#include <string.h>

// Compiled with: clang -fno-stack-protector buffer_overflow.c -o buffer_overflow.bin


void foo(char *bar)
{
   char c[5];

   strncpy(c, bar, 5);  // no bounds checking
}

int main()
{
   volatile char bad[50] = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
   foo(&bad);
   return 0;
}
