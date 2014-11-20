      .data
      .align 2
str:  .asciiz "Hello"
      .text
main: li    $v0, 4        # for syscall of print_string
      la    $a0, str      # $a0 = address (of "Hello")
      li    $s0, 0        # initialize i
      li    $s1, 2        # number of loop
Loop: bgt   $s0, $s1, Exit  # go to Exit if $s0 > $s5
      syscall
      addi  $s0, $s0, 1     # i = i + 1 ($s0=$s0+1)
      j     Loop            # go to Loop
Exit: j     $ra

