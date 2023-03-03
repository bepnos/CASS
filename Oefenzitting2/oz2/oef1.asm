.globl main 

.data
    a: .word 3
    b: .word 5
    result: .word 3
.text

main:
	li, t1, 1
	li, t2, 2
	li, t3, 3  
	lw t4 a 
	lw t5 b 
	lw t0 result
 	beq t0, zero, case0
 	beq t0, t1, case1
 	beq t0, t2, case2
 	beq t0, t3, case3 
     
    
case0: 
	add a0, t4, t5 
	beq zero, zero, end
case1:
	sub a0, t4, t5
	beq zero, zero, end
case2:
	addi a0, t4, 5
	beq zero, zero, end
case3:
	addi a0, t5, 5
	beq zero, zero, end

end: 