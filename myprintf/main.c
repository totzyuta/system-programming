#include <stdio.h>
#include "myprintf.c"

int main() {
  char fmt[] = "First Argument";
  // scanf("%s", fmt);
  // printf("%s", format);
  char string[] = "Second Argument";
  myprintf("Argument: %s", string);

  return 1;
}
