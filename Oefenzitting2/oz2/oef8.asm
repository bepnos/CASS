.globl main

.data
	array: .word 1, 2, 10, 30

.text

main: 
	la t1, array # adress array in t1 
	lw t2, (t1) # value in t2
	beq t2, zero, end
	addi a0, a0, 1 # total length in a0 
loop: 	
	addi t1, t1, 4 
	lw t2, (t1)
	beq t2, zero, end
	addi a0, a0, 1
	bne t2, zero, loop
end:
	
