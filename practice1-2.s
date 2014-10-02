  .text
  .align 2

# print $a0 (ASCII)
main:
  li    $a0, 72           # $a0 : 'H'
  li    $a1, 101          # $a0 : 'e'
  li    $a2, 108          # $a0 : 'l'
  li    $a3, 111          # $a0 : 'o'
putc1:
  lw    $t0, 0xffff0008   # t0 = *(0xffff0008)
  li    $t1, 1            # $t1 = 1
  and   $t0, $t0, $t1      # $t0 &= $t1
  beqz  $t0, putc1         # if ($t0 == 0) goto putc
  sw    $a0, 0xffff000c   # *(0xffff000c) = $a0
  j     $ra               # return
