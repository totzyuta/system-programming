	.data
str:
	.asciiz		"the answer = "
	.text
main:
	li			$v0, 4		# 手順１：print_stringのシステムコールコードは4
	la			$a0, str	# 手順２：asciizで保存したプリントする文字列のアドレスを$a0に格納
	syscall					  # 手順４：文字列をプリント（サービス実行！）
	
	li			$v0, 1		# 手順１：print_intのシステムコールコードは1
	li			$a0, 5		# 手順２：プリントする整数5を$a0に格納
	syscall					  # 手順４：整数をプリント
  j       $ra
