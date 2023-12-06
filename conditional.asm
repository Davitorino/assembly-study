.data
	msg_par: .asciiz "Eh Par!"
	msg_impar: .asciiz "Eh Impar!"
	comando: .asciiz "Digite um numero: "
.text
	main:
	li $v0, 4
	la $a0, comando
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $t0, 2
	div $s0, $t0
	mfhi $s1
	
	beq $s1, $zero, printPar
	
	li $v0, 4
	la $a0, msg_impar
	syscall
	
	li $v0, 10
	syscall
	
	printPar:
	li $v0, 4
	la $a0, msg_par
	syscall