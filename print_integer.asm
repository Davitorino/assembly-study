.data
	idade: .word 20 # valor inteiro na RAM
.text
	li $v0, 1 # imprimir inteiro
	lw $a0, idade
	syscall
	
	li $v0, 10
	syscall