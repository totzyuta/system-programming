  .text
  .align  2

_myprintf:            # Main function
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

# Branch by arguments

  li    $t0, 100      # "d" = 100
  beq   $a0, $t0, print_int   # goto print_int if $a0 = "d"

# Call each functions

  lw    $ra, 20($sp)
  addu  $sp, $sp, 24
  j     $ra           # End this program


_print_int:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 1  # 1: print_int
  li    $a0, 
  syscall

  lw    $ra, 20($sp)
  addu  $sp, $sp, 24
  j     $ra


_print_string:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 4  # 4: print_string
  syscall

  lw    $ra, 20($sp)
  addu  $sp, $sp, 24
  j     $ra


_read_int:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 5  # 5: read_int
  syscall

  lw    $ra, 20($sp)
  addu  $sp, $sp, 24
  j     $ra


_read_string:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 8  # 8: read_string
  syscall

  lw    $ra, 20($sp)
  addu  $sp, $sp, 24
  j     $ra
