array:
  .space 400

  .text
  .align 2
prime:      
  subu  $sp, $sp, 32  # Length of stack frame: 32 bytes
  sw    $ra, 20($sp)  # Save return address (戻りアドレスを退避)
  sw    $fp, 16($sp)  # Save old frame pointer (古いフレームポインタを退避)
  addiu $fp, $sp, 28  # Set up frame pointer

  li    $t0, 2          # number to loop and divide (i)
Loop_prime: 
  beq   $t0, $a0, return1 # return1 if n is prime number (i==n)
  bgt   $t0, $a0, Exit_prime # break the loop if n > i
  rem   $t1, $a0, $t0   # $t1 = n % i
  beqz  $t1, Exit_prime # goto Exit_prime if $t1 == 0
  addi  $t0, $t0, 1     # increment i
  j     Loop_prime      # loop again with incremented i
return1:    
  li    $v0, 1        # Prime is true
  lw    $ra, 20($sp)  # Restore return address
  lw    $fp, 16($sp)  # Restore frame pointer
  addiu $sp, $sp, 32  # Pop stack frame
  jr    $ra           # Return to caller
Exit_prime: 
  li    $v0, 0        # Prime is false 
  lw    $ra, 20($sp)  # Restore return address
  lw    $fp, 16($sp)  # Restore frame pointer
  addiu $sp, $sp, 32  # Pop stack frame
  jr    $ra           # Return to caller

  .data
info:      
  .asciiz "Prime Number Searcher\n\nWhich number is the prime number you want to know?\n- Type 1-100\n- To quit, type 0\n\n"       
mark:
  .asciiz "\n> "
end:
  .asciiz "\nGood bye :)\n\n"
error:
  .asciiz "\nPlease type correct number\n"

  .text
  .align 2
main:
  subu  $sp, $sp, 32  # Length of stack frame: 32 bytes
  sw    $ra, 20($sp)  # Save return address (戻りアドレスを退避)
  sw    $fp, 16($sp)  # Save old frame pointer (古いフレームポインタを退避)
  addiu $fp, $sp, 28  # Set up frame pointer

  li    $v0, 4          # for syscall of print_string
  la    $a0, info       # Introduction
  syscall               # print info

  li    $s0, 100        # set maximum number (match number)
  li    $s1, 0          # number of loop
  li    $s3, 2          # number to check and print (n)
  li    $s7, 1          # for comparing
  la    $a1, array      # Set array (400 bytes)
Loop:       
  beq   $s0, $s1, Exit  # break if $s1==100
  move  $a0, $s3        # Put argument (2) in $a0 
  jal   prime           # $v0 = prime
  bne   $v0, $s7, Else  # go to Else if prime(n)!=1

  li    $t4, 4          # For array increasing
  addu  $a1, $a1, $t4   # $a1 = $a1 + 4
  sw    $s3, 0($a1)     # Put prime number into array

  addi  $s1, $s1, 1     # increase the number of matched prime number
Else:   
  addi  $s3, $s3, 1     # n = n + 1 
  j     Loop            # go to Loop
Exit:   
  li    $v0, 4          # for syscall of print_string
  la    $a0, mark       # Mark of ">"
  syscall               # print info
  la    $a1, array      # Initialize $a1
  li    $v0, 5          # For syscall of read_int
  syscall               # read_int for number of prime
  beqz  $v0, End        # goto Exit if $v0 == 0
  bltz  $v0, Error      # goto Error if $v0 < 0
  slti  $t4, $v0, 101   # Put boolean of $v0 > 100
  beqz  $t4, Error      # goto Error if $v0 > 100
  move  $t3, $v0        # Put argument into $t3
  addu  $t3, $t3, $t3   # $t3 = $t3 * 2
  addu  $t3, $t3, $t3   # $t3 = $t3 * 2
  addu  $a1, $a1, $t3   # Add address to fetch
  lw    $a0, 0($a1)     # Fetch selected prime
  li    $v0, 1          # For syscall of print_int
  syscall               # Print nth prime
  j     Exit

Error:
  li    $v0, 4          # for syscall of print_string
  la    $a0, error      # Print error message
  syscall               # print info
  j     Exit

  
End:
  li    $v0, 4          # for syscall of print_string
  la    $a0, end        # Mark of ">"
  syscall               # print info
  lw    $ra, 20($sp)  # Restore return address
  lw    $fp, 16($sp)  # Restore frame pointer
  addiu $sp, $sp, 32  # Pop stack frame
  jr    $ra           # End this program
