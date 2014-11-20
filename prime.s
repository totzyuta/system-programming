        .data
space:  .asciiz " "        
        .text
        .align 2
main:   li    $s0, 100        # set maximum number 
        li    $s1, 0          # number of loop
        li    $s3, 2          # number to check and print (n)
        li    $s7, 1          # for comparing
Loop:   beq   $s0, $s1, Exit  # break if $s1==100
        jal   prime           # $v0 = prime
        bne   $v0, $s7, Else  # go to Else if prime(n)!=1
        li    $v0, 1          # for syscall of print_int
        li    $a0, $s3        # put the prime number
        syscall               # print the prime number
        li    $v0, 4          # for syscall of print_string
        li    $a0, space      # " "
        syscall               # print " "
        addi  $s0, $s0, 1     # increase the number of prime number
Else:   
        addi  $s3, $s3, 1     # n = n + 1 
        j     Loop            # go to Loop
Exit:   j     $ra
