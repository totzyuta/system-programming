void myprintf(char *fmt, ...) {
  printf("Format =>  %s\n", fmt);
  printf("Address =>  %d\n", &fmt);
  // char *p = ((char*)&fmt) + 4;
  char *p2 = ((char*)&fmt) + ((sizeof(fmt) + 3) / 4) * 4;
  // int sizeoffmt = ((sizeof(fmt) + 3) / 4) * 4;
  // printf("sizeof(fmt) => %d\n", sizeoffmt);
  printf("Address =>  %d\n", p2);
  printf("Second Argument => %d\n", *p2);
}
