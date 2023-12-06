.data
	msg_input: .asciiz "Digite sua idade: "
	msg_output: .asciiz "Sua idade é: "
.text
	li $v0, 4 # imprimir string
	la $a0, msg_input
	syscall
	
	li $v0, 5 # ler inteiro
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg_output
	syscall

	li $v0, 1 # imprimir inteiro
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall