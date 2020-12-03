#include "test.hpp"
#include <cstdint>

void example_constrain_arg(int x, int y) {
  assert_symbolic (x == y);
}

int example_constrain_ret(int y) {
  // If we don't force this to a fresh symbolic value, it could be in a register that was
  // pre-initialized, which causes Spacer to fail.
  volatile int x = FRESH_SYMBOLIC;
  assert_symbolic (x == y);
  return x;
}

int __ctr;

int example_counter() {
  return ++__ctr;
}

// Initial implementation
extern "C" void* _Znwm (int) {
  volatile uintptr_t ptr = FRESH_SYMBOLIC;
  assert_symbolic (ptr < 0xafff0000L && ptr >= 0xa0000000L);
  return (void*) ptr;
}
