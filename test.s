	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	$0, -4(%rbp)
	movl	$424, -8(%rbp)          ## imm = 0x1A8
	movl	-8(%rbp), %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_print_int
	movl	-12(%rbp), %edi         ## 4-byte Reload
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
