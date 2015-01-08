#include <stdio.h>
#include "myprintf.c"

int main() {
  char fmt[256];
  fmt[0] = "c";
  // scanf("%s", fmt);
  // printf("%s", format);
  // myprintf(*fmt);
  test_printf("success");

  return 1;
}
