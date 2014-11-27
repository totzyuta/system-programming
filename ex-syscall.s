	.data
str:
	.asciiz		"Hello World"
	.text
main:
	li			$v0, 4		# 手順１：print_stringのシステムコールコードは4
	la			$a0, str	# 手順２：asciizで保存したプリントする文字列のアドレスを$a0に格納
	syscall					  # 手順４：文字列をプリント（サービス実行！）

  j       $ra
