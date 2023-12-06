.data
	comando: .asciiz "Digite um numero positivo: "
	msg_par: .asciiz "Eh par!"
	msg_impar: .asciiz "Eh impar!"
.text
	.main:
	la $a0, comando
	jal imprimirString
	jal lerInteiro

	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimirPar

	la $a0, msg_impar
	jal imprimirString
	jal encerrarPrograma

	imprimirPar:
		la $a0, msg_par
		jal imprimirString
		jal encerrarPrograma

	ehImpar:
		li $t0, 2
		div $a0, $t0
		mfhi $v0
		jr $ra

	imprimirString:
		li $v0, 4
		syscall
		jr $ra

	lerInteiro:
		li $v0, 5
		syscall
		jr $ra
		
	encerrarPrograma:
		li $v0, 10
		syscall
		