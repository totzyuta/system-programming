            .text
            .align 2
prime:      li    $t0, 2          # number to loop and divide (i)
Loop_prime: beq   $t0, $s3, return1 # return1 if n is prime number 
            bgt   $t0, $s3, Exit_prime # break the loop if n > i
            rem   $t1, $s3, $t0   # $t1 = n % i
            beqz  $t1, Exit_prime # goto Exit_prime if $t1 == 0
            addi  $t0, $t0, 1     # increment i
            j     Loop_prime      # loop again with incremented i
return1:    li    $v0, 1          
            j     $ra             # return 1 
Exit_prime: li    $v0, 0         
            j     $ra             # return 0 
            .data
space:      .asciiz " "        
            .text
            .align 2
main:       li    $s0, 100        # set maximum number (match number)
            li    $s1, 0          # number of loop
            li    $s3, 2          # number to check and print (n)
            li    $s7, 1          # for comparing
Loop:       beq   $s0, $s1, Exit  # break if $s1==100
            jal   prime           # $v0 = prime
            bne   $v0, $s7, Else  # go to Else if prime(n)!=1
            li    $v0, 1          # for syscall of print_int
            move  $a0, $s3        # put the prime number
            syscall               # print the prime number
            li    $v0, 4          # for syscall of print_string
            la    $a0, space      # " "
            syscall               # print " "
            addi  $s1, $s1, 1     # increase the number of prime number
Else:   
            addi  $s3, $s3, 1     # n = n + 1 
            j     Loop            # go to Loop
Exit:       j     $ra
