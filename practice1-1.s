  .text                 # text segument
  .align  2             # within 4 bytes
main:                   
  move    $a0,$zero     # main (start from here)
  li      $v1,1         # $a0 : SUM = 0
loop:   
  addu    $a0,$a0,$v1   # SUM += COUNT
  addu    $v1,$v1,1     # COUNT++
  slt     $v0,$v1,6     # $v0 = COUNT < 6 ? 1 : 0 
  bnez    $v0,loop      # if ($v0 != 0) goto loop
  move    $t0,$a0       # $t0 = SUM
  j       $ra           # return
