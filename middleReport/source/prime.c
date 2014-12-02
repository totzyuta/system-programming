int prime(int n)
{
  int i;
  for (i = 2; i < n; i++){
    if (n % i == 0)
      return 0;
  }
  return 1;
}

int main()
{
  int match = 0, n = 2;
  while (match < 100){
    if (prime(n) == 1){
      printf("%d",n);
      printf(" ");
      match++;
    }
    n++;
  }
  printf("\n");
}
