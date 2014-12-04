array:
  .space 400

  .text
main:
  la      $a0, array     # $a0 = head address of array
  # lw      $t0, 0($a0)    # Fetch first element
  li      $s0, 1
  li      $s1, 100
loop:
  sw      $s0, 0($a0)
  addu    $a0, $a0, $a0
  addu    $a0, $a0, $a0
  addu    $s0, $s0, 1
  bne     $s0, $s1, loop

  li      $a0, 5
  syscall
  li      $a0, 1
  syscall
