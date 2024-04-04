.data
	raiz: .word 0
	soma: .word 0
	impar: .word 1
	n: .word 5
.text
	lw $s0, raiz
	lw $s1, soma
	lw $s2, impar
	lw $s3, n
	
	while:
		bge $s1, $s3, fim
		add $s0, $s0, $s2
		addi $s2, $s2, 2
		addi $s1, $s0, 1
		j while
	fim:
		li $v0, 10
		syscall