  .text                 # text segument
  .align  2             # within 4 bytes (2^2)

main:                   # main (start from here)
  move    $a0,$zero     # $a0 : SUM = 0
  li      $v1,1         # $v1 : COUNT = 1
loop:   
  addu    $a0,$a0,$v1   # SUM += COUNT
  addu    $v1,$v1,1     # COUNT++
  slt     $v0,$v1,6     # $v0 = COUNT < 6 ? 1 : 0 
  bnez    $v0,loop      # if ($v0 != 0) goto loop
  move    $t0,$a0       # $t0 = SUM
  j       $ra           # return
