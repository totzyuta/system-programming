void myprintf(char *fmt, ...) {
  
  int i, argc = 0;
  char *s;

  while (*fmt) {
    if (*fmt == '%') {
      fmt++;
      argc++;
      switch (*fmt) {
        case '%':
          // Process of %%: print '%'
          print_char(*fmt);
          break;
        case 'c':
          // Process of %c: print character
          c = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          print_char(c);
          break;
        case 'd':
          // Process of %d: print integer 
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          print_int(i);
          break;
        case 'x':
          // Process of %x: print as hexadecimal number
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          str = (char *) malloc(15);
          while(i) {
            str = i % 16;
            if(10>*str){
              *str = '0';
            }else{
              *str+='A' - 10;  
            }
            i/=16;
            str++;
          }
          print_string(str);
          break;
        case 'o':
          // Process of %o: print as octal number
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          str = (char *) malloc(15);
          while(i) {
            str = i % 8;
            *str = '0';
            i/=8;
            str++; 
          }
          print_string(str);
          break;
        case 's':
          // Process of %s: print string
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
