	.file	1 "hanoi.c"

 # -G value = 0, Cpu = r2000, ISA = 1
 # GNU C version 2.96-mips3264-000710 (mipsel-linux) compiled by GNU C version 2.96 20000731 (Red Hat Linux 7.2 2.96-112.7.2).
 # [AL 1.1, MM 40] BSD Mips
 # options passed:  -mno-abicalls -mrnames -mmips-as
 # -mno-check-zero-division -mcpu=r2000 -O0 -fleading-underscore
 # -finhibit-size-directive -fverbose-asm
 # options enabled:  -fpeephole -fkeep-static-consts -fpcc-struct-return
 # -fsched-interblock -fsched-spec -fnew-exceptions -fcommon
 # -finhibit-size-directive -fverbose-asm -fgnu-linker -flive-range-gdb
 # -fargument-alias -fleading-underscore -fdelay-postincrement -fident
 # -fmath-errno -msplit-addresses -mrnames -mno-check-zero-division
 # -mdebugf -mdebugi -mno-div-checks -mcpu=r2000


	.rdata
	.align	0
	.align	2
$LC0:
	.asciiz	"Move disk "
	.align	2
$LC1:
	.asciiz	" from peg "
	.align	2
$LC2:
	.asciiz	" to peg "
	.align	2
$LC3:
	.asciiz	".\n"
	.text
	.align	2
	.set	nomips16
_hanoi:
	subu	$sp,$sp,24
	sw	$ra,20($sp)
	sw	$fp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$a1,28($fp)
	sw	$a2,32($fp)
	sw	$a3,36($fp)
	lw	$v0,24($fp)
	beq	$v0,$zero,$L3
	lw	$v0,24($fp)
	addu	$v0,$v0,-1
	move	$a0,$v0
	lw	$a1,28($fp)
	lw	$a2,36($fp)
	lw	$a3,32($fp)
	jal	_hanoi
	la	$a0,$LC0
	jal	_print_string
	lw	$a0,24($fp)
	jal	_print_int
	la	$a0,$LC1
	jal	_print_string
	lw	$a0,28($fp)
	jal	_print_int
	la	$a0,$LC2
	jal	_print_string
	lw	$a0,32($fp)
	jal	_print_int
	la	$a0,$LC3
	jal	_print_string
	lw	$v0,24($fp)
	addu	$v0,$v0,-1
	move	$a0,$v0
	lw	$a1,36($fp)
	lw	$a2,32($fp)
	lw	$a3,28($fp)
	jal	_hanoi
$L3:
	move	$sp,$fp
	lw	$ra,20($sp)
	lw	$fp,16($sp)
	addu	$sp,$sp,24
	j	$ra
	.rdata
	.align	0
	.align	2
$LC4:
	.asciiz	"Enter number of disks> "
	.text
	.align	2
	.set	nomips16
main:
	subu	$sp,$sp,32
	sw	$ra,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	la	$a0,$LC4
	jal	_print_string
	jal	_read_int
	sw	$v0,16($fp)
	lw	$a0,16($fp)
	li	$a1,1			# 0x1
	li	$a2,2			# 0x2
	li	$a3,3			# 0x3
	jal	_hanoi
	move	$sp,$fp
	lw	$ra,28($sp)
	lw	$fp,24($sp)
	addu	$sp,$sp,32
	j	$ra
