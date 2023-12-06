.data
	arr: 
		.align 2
		.space 16
.text
	move $t0, $zero
	move $t1, $zero
	li $t2, 16
	
	loop:
		bge $t0, $t2, saidaLoop
		sw $t1, arr($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j loop
	saidaLoop:
		move $t0, $zero
	imprime:
		bge $t0, $t2, saidaImprime
		li $v0, 1
		lw $a0, arr($t0)
		syscall
		addi $t0, $t0, 4
		j imprime
	saidaImprime: