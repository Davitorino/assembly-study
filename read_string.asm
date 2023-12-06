.data
	comando: .asciiz "Digite seu nome: "
	saudacao: .asciiz "Olá, "
	nome: .space 25
.text
	li $v0, 4
	la $a0, comando
	syscall
	
	li $v0, 8
	la $a0, nome
	li $a1, 25 
	syscall
	move $t0, $a0
	
	li $v0, 4
	la $a0, saudacao
	syscall
	la $a0, nome
	syscall
	
	li $v0, 10
	syscall