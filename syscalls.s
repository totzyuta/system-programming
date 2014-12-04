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

_read_int:

_read_string:


