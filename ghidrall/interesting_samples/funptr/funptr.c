#include <stdint.h>

void foo (int *p) { *p = 42; }

int main(void) {
    int x = 10;
    foo(&x);
    return 0;
}

int bar(void){
	int64_t v;
	*(int32_t *)(((char *)&v) + 4) = (int32_t) 0;
	*(int32_t *)(((char *)&v) + 0) = (int32_t) 10;
}