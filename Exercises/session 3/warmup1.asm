.globl main
.data
    a: .word 1
    b: .word 2
    number: .word 0

.text
main:
    # Load the two numbers a and b into registers
    lw t1 a 
    lw t2 b 

sum:
    # Add the two numbers and put them in a register for main to find.
    add t3, t1, t2 
    la t6, number
    sw t3, number, t4
    

resume:
    lw a0, number

