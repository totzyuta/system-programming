void myprintf(char *fmt, ...) {
  // printf("Format =>  %s\n", fmt);
  // char *p = ((char*)&fmt) + 8;
  // printf("Second Argument => %s\n", p);
  
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
