void print_char(char c) {
  char s[2];

  s[0] = c;
  s[1] = '\0';

  print_string(s)
}

void myprintf(char *fmt, ...) {
  
  int i, argc = 0;
  char *s;

  while (*fmt) {
    if (*fmt == '%') {
      fmt++;
      argc++;
      switch (*fmt) {
        case '%':
          // Process of %%
          break;
        case 'c':
          // Process of %c
          break;
        case 'd':
          // Process of %d
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          print_int(i);
          break;
        case 'u':
          // Process of %u
          break;
        case 's':
          // Process of %s
          s = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          print_string(s);
          break;
        break;
      }
    }else {
      // print a character as it is 
      print_char(*fmt);
    }
    fmt++;
  }
}

int main() {
  myprintf("I am %s, my age is %d", "Yuta Totsuka", 21);
  return 0;
}
