	  .text
	  .align 2

main:
	  move	  $s0, $ra 

	  li      $a0, 'H'           
	  jal	  putc               
	  li      $a0, 'e'         
	  jal	  putc               
	  li      $a0, 'l'         
	  jal	  putc               
	  li      $a0, 'l'         
	  jal	  putc               
	  li      $a0, 'o'         
	  jal	  putc               
	  li      $a0, ' '           
	  jal	  putc               
	  li      $a0, 'W'         
	  jal	  putc               
	  li      $a0, 'o'         
	  jal	  putc               
	  li      $a0, 'r'         
	  jal	  putc               
	  li      $a0, 'l'         
	  jal	  putc               
	  li      $a0, 'd'         
	  jal	  putc               

	  move    $ra, $s0	       

	  j       $ra              

putc:
	  lw      $t0, 0xffff0008         # $t0 = *(0xffff0008)
	  li      $t1, 1                  # $t1 = 1
	  and     $t0, $t0, $t1           # $t0 &= $t1
	  beqz    $t0, putc               # if ($t0 == 0) goto putc
	  sw      $a0, 0xffff000c         # *(0xffff000c) = $a
	  j       $ra
