array:
  .space 40
  .text
main:
  la  $a1, array
  li  $t0, 4
  sw  $t0, 0($a1)
  lw  $t1, 0($a1)

  li  $t0, 424
  addu $a1, $a1, 4
  sw  $t0, 0($a1)

  li  $v0, 5
  syscall
  move  $t2, $v0
  li  $v0, 1
  subu  $t2, $t2, 1
  addu  $t2, $t2, $t2
  addu  $t2, $t2, $t2
  addu  $a1, $a1, $t2
  lw    $a0, 0($a1)
  syscall
