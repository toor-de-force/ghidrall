
#include <string.h>

// Compiled with: clang -fno-stack-protector buffer_overflow.c -o
// buffer_overflow.bin

#include <stdio.h>

// Function to implement strcpy() function
char *my_strcpy(char *destination, const char *source) {
  // return if no memory is allocated to the destination
  if (destination == NULL)
    return NULL;

  // take a pointer pointing to the beginning of destination string
  char *ptr = destination;

  // copy the C-string pointed by source into the array
  // pointed by destination
  while (*source != '\0') {
    *destination = *source;
    destination++;
    source++;
  }

  // include the terminating null character
  *destination = '\0';

  // destination is returned by standard strcpy()
  return ptr;
}


void foo(char *bar) {
  volatile char c[5];
  my_strcpy((char*)c, bar); // no bounds checking
}

int main() {
  volatile char bad[50] = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
  foo((char *)&bad);
  return 0;
}

