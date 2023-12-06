.data
	maior_zero: .asciiz "O numero eh maior do que zero!"
	menor_zero: .asciiz "O numero eh menor do que zero!"
	igual_zero: .asciiz "O numero eh igual a zero!"
	comando: .asciiz "Digite um numero: "
.text
	main:
	li $v0, 4
	la $a0, comando
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	bgt $t0, $zero, maiorZero
	blt $t0, $zero, menorZero
	
	la $a0, igual_zero
	syscall
	
	li $v0, 10
	syscall
	
	maiorZero:
	la $a0, maior_zero
	syscall
	
	li $v0, 10
	syscall
		
	menorZero:
	la $a0, menor_zero
	syscall
	
	li $v0, 10
	syscall