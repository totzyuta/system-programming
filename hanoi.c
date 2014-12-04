void hanoi(int n, int start, int finish, int extra)
{
  if (n!=0) {
    hanoi(n-1, start, extra, finish);
    print_string("Move disk ");
    print_int(n);
    print_string(" from peg ");
    print_int(start);
    print_string(" to peg ");
    print_int(finish);
    print_string(".\n");
    hanoi(n-1, extra, finish, start);
  }
}

main()
{
  int n;
  print_string("Enter number of disks> ");
  n = read_int();
  hanoi(n, 1, 2, 3);
}


