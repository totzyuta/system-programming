#include <stdio.h>
#include "myprintf.c"

int main() {
  char fmt[256];
  scanf("%s", fmt);
  // printf("%s", format);
  myprintf(*fmt);

  return 1;
}
