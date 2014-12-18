
	.file	1 "report2-1.c"

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
	.asciiz	"ABCDEFG"
	.data
	.align	0
	.align	2
_string_ptr:
	.word	$LC0
	.align	2
_string_ary:
	.asciiz	"ABCDEFG"
	.rdata
	.align	0
	.align	2
$LC1:
	.asciiz	" = "
	.align	2
$LC2:
	.asciiz	"\n"
	.text
	.align	2
	.set	nomips16
_print_var:
	subu	$sp,$sp,24
	sw	$ra,20($sp)
	sw	$fp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$a1,28($fp)
	lw	$a0,24($fp)
	jal	_print_string
	la	$a0,$LC1
	jal	_print_string
	lw	$a0,28($fp)
	jal	_print_int
	la	$a0,$LC2
	jal	_print_string
	move	$sp,$fp
	lw	$ra,20($sp)
	lw	$fp,16($sp)
	addu	$sp,$sp,24
	j	$ra
	.rdata
	.align	0
	.align	2
$LC3:
	.asciiz	"primes_stat[0]"
	.align	2
$LC4:
	.asciiz	"primes_auto[0]"
	.text
	.align	2
	.set	nomips16
main:
	subu	$sp,$sp,64
	sw	$ra,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	li	$v0,2			# 0x2
	sw	$v0,_primes_stat
	li	$v0,3			# 0x3
	sw	$v0,16($fp)
	la	$a0,$LC3
	lw	$a1,_primes_stat
	jal	_print_var
	la	$a0,$LC4
	lw	$a1,16($fp)
	jal	_print_var
	move	$sp,$fp
	lw	$ra,60($sp)
	lw	$fp,56($sp)
	addu	$sp,$sp,64
	j	$ra

	.comm	_primes_stat,40
