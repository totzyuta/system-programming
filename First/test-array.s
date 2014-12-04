array:
  .space 40

  .text
main:
  la  $a1, array
  li  $t0, 4
  sw  $t0, 0($a1)
  lw  $t1, 0($a1)

  li  $v0, 1
  lw  $a0, 0($a1)
  syscall

  li  $t0, 424
  addu $a1, $a1, 4
  sw  $t0, 0($a1)
  
  lw  $a0, 0($a1)
  syscall
