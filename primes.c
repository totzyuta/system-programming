int primes_stat[10];

char * string_ptr = "ABCDEFG";
char string_ary[] = "ABCDEFG";

void print_var(char *name, int val)
{
  print_string(name);
  print_string(" = ");
  print_int(val);
  print_string("\n");
}

main()
{
  int primes_auto[10];

  primes_stat[0] = 2;
  primes_auto[0] = 3;

  print_var("primes_stat[0]", primes_stat[0]);
  print_var("primes_auto[0]", primes_auto[0]);
}

