main()
{
  printf("The factorial of 10 is %d\n", fact(10));
}

int fact(int n)
{
	if (n < 1)
	    return 1;
  	else
    	return n * fact(n-1);
}
