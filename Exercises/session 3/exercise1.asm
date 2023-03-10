.globl main
.data
	x: .word 10
	y: .word 2
	z: .word

.text
j main
	
double_it:
	add a1, a1, a1
	ret

sum:
	addi sp, sp, -4
	sw ra, (sp)
	jal double_it
	lw ra, (sp)
	addi, sp, sp, -4
	add, a0, a0, a1
	ret
	
main:
	lw a0, x
	lw a1, y
	jal sum
	sw a0, z, t1
	