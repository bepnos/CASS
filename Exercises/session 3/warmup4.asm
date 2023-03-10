.globl main
.data
    stack: .space 500
.text
main:
    la sp, stack
    addi t2, zero, 4 
    sw t2, (sp)
    addi sp, sp, 4
    addi t2, zero, 5
    sw t2, (sp)
    addi sp, sp, 4 
    addi sp, sp, -4
    lw t3, (sp)
    addi sp, sp, -4
    lw t4, (sp)
    
 