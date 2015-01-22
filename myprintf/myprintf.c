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
          /*
        case 'x':
          // TODO: Process of %x: print as hexadecimal number
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          str = (char *) malloc(15);
          while(i) {
            int surplus = i % 16;
            if(10>*str){
              *str = surplus;     // 0x30:0の文字コード
            }else{
              *str+=(0x41-0x0A);  //0x41:Aの文字コード
            }
            i/=16;
            str++;
          }
          print_string(str);
          // printf("0x%s\n",str_ptr);
          break;
        case 'o':
          // TODO: Process of %o: print as octal number
          i = *((int*) ((char *)&fmt + argc * sizeof(void *)) );
          str = (char *) malloc(15);
          while(i) {
            int surplus = i % 8;
            *str = surplus;     //0x30:0の文字コード
            i/=8;
            str++; 
          }
          print_string(str);
          // printf("0x%s\n",str_ptr);
          break;
          */
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
