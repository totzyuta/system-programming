  .text
  .align  2

_print_int:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 1  # 1: print_int
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


_print_char:
  subu  $sp, $sp, 24
  sw    $ra, 20($sp)

  li    $v0, 11  # 11: print_char
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
