  .text
  .align 2
main:
  li  $v0, 1
  li  $a0, 'H'
  syscall
  j   $ra
