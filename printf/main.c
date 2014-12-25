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
    // print the format without arguments
  }
  fmt++;
}

