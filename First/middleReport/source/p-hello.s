      .data
      .align 2
str:  .asciiz  "Hello"
      .text
      .align 2
main: li  $v0, 4
      la  $a0, 65 
      syscall
      j   $ra
