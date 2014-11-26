  .text
  .align 2
main:
  li      $s2, 108          # 'l' == 108
  li      $s3, 111          # 'o' == 111
  li      $s4, 87           # 'W' == 87
  li      $s5, 114          # 'r' == 114
  li      $s6, 100          # 'd' == 100
  li      $s7, 1            # $s7 = 1
  li      $s8, 32           # $s8 = space

  li      $a0, 72           # 'H' == 72
putH:
  lw      $t0, 0xffff0008   # $t0 = *(0xffff0008)
  li      $t1, 1            # $t1 = 1
  and     $t0, $t0, $t1     # $t0 &= $t1
  beqz    $t0, putH         # if ($t0 == 0) goto putc
  sw      $a0, 0xffff000c   # *(0xffff000c) = $a0

  li      $t0, 101          # 'e' == 101
pute:
  lw      $t0, 0xffff0008   # $t0 = *(0xffff0008)
  li      $t1, 1            # $t1 = 1
  and     $t0, $t0, $t1     # $t0 &= $t1
  beqz    $t0, pute         # if ($t0 == 0) goto putc
  sw      $a0, 0xffff000c   # *(0xffff000c) = $a0


  j       $ra               # return
