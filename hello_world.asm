.data 
	# área para dados na memória principal
	msg: .asciiz "Olá mundo!" # mensagem a ser escrita para o usuário
	
.text
	# área para instruções do programa

	li $v0, 4 # instrução para imprimir string
	la $a0, msg
	syscall # faça! o que está em $v0
	