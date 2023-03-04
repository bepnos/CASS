.globl main

.data
	array: .word 1, 2, 3

.text

main: 
	la t1, array # base adress in t1 
	lw t3, (t1)
	addi a1, zero, 4 # scalar = 4 , in a1 
	beq t3, zero, end
	
reset: 
	add t5, a1, zero
	add t4, zero, zero
multiply: 

	addi t5, t5, -1 
	add t4, t3, t4 
	bne t5, zero, multiply
next: 
	sw t4, (t1)
	addi t1, t1, 4
	lw t3, (t1)
	bne t3, zero, reset
end: 
