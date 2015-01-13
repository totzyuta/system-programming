void myprintf(char *fmt, ...) {
  printf("Format =>  %s\n", fmt);
  char *p = ((char*)&fmt) + 8;
  printf("Second Argument => %s\n", p);
  while (*fmt) {
    if (*fmt == '%') {
      fmt++;
      switch (*fmt) {
        case '%':
          // Process of %%
        case 'c':
          // Process of %c
        case 'd':
          // Process of %d
        case 'u':
          // Process of %u
        case 's':
          // Process of %s
        break;
      }
    }else {
      // print a character as it is 
      // print_character(fmt);
    }
    fmt++;
  }
}
