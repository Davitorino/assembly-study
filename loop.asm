.data
	comando: .asciiz "Digite um numero: "
	espaco: .byte ' '
.text
	li $v0, 4
	la $a0, comando
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	move $t0, $zero

	while:
		bgt $t0, $s0, saida
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t0, $t0, 1
		j while
	saida:
		li $v0, 10
		syscall