#include <stdio.h>
#include "myprintf.c"
 
int main() {
  char fmt[] = "First Argument";
  char string[] = "Second Argument";
  // myprintf("Argument: %s", fmt, string);
  myprintf("Argument: %s", string);
  return 0;
}
