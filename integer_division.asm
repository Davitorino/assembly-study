.text
	li $t0, 32
	li $t1, 5
	div $t0, $t1

	mflo $s0 # parte inteira da divisão em $s0
	mfhi $s1 # resto da divisão em $s1
	
	srl $s2, $t0, 2