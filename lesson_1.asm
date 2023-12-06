.data
	comando_numero_vetor: .asciiz "Digite um numero para o vetor (0 a 20): "
	comando_numero_k: .asciiz "Digite o numero de K (0 a 10): "
	espaco: .byte ' '
	vetor:
		.align 2
		.space 40
	k: .word 0
	
.text
	.globl .main

	.main:
	move $s0, $zero # Inicia iterador para o vetor
	li $s1, 40 # Inicia limite para a iteração no vetor
	
	loopLeVetor: # Le e armazena os numeros do vetor
		bge $s0, $s1, saidaLoopLeVetor
		la $a0, comando_numero_vetor
		jal imprimeString
		jal leInteiro
		sw $v0, vetor($s0)
		addi $s0, $s0, 4
		j loopLeVetor

	saidaLoopLeVetor: # Le e armazena o valor de K
		la $a0, comando_numero_k
		jal imprimeString
		jal leInteiro
		sw $v0, k($zero)
		move $s0, $zero

	loopImprimePotencia: # Calcula a potência pra cada valor do vetor e imprime
		bge $s0, $s1, fim
		lw $a0, vetor($s0) # $a0 recebe a base da potência
		lw $a1, k # $a1 recebe o expoente da potência
		jal calculaPotencia
		move $a0, $v0
		jal imprimeInteiro
		la $a0, espaco
		jal imprimeString
		addi $s0, $s0, 4
		j loopImprimePotencia
		
	fim: # Encerra o programa
		li $v0, 10
		syscall

	imprimeString:
		li $v0, 4
		syscall
		jr $ra
	
	imprimeInteiro:
		li $v0, 1
		syscall
		jr $ra
	
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
		
	calculaPotencia:
		move $t0, $zero # Inicia iterador da potencia
		li $v0, 1 # Inicia valor de retorno da potencia
		while:
			bge $t0, $a1, fimWhile
			mul $v0, $v0, $a0
			addi $t0, $t0, 1
			j while
		fimWhile:
			jr $ra