.data

.text
     addi $s0, $zero, 10
     addi $s1, $zero, 4
     
     mul $t0, $s0, $s1 # mul uses 4 registers, 1 of 3 ways to multiply
     		       # cannot multiply bigger than 2 16 bit numbers
     
     li $v0, 1
     add $a0, $zero, $t0
     syscall
     
     # method 2
     
     addi $t0, $zero, 2000
     addi $t1, $zero, 10
     
     mult $t0, $t1
     
     mflo $s0
     
     # display product to screen
     li $v0, 1
     add, $a0, $zero, $s0
     syscall
     
     # method 3 - shift left logical(also shift right logical does division)
     
     addi $s0, $zero, 4
     
     #multiply 4 times 4
     
     sll $t0, $s0, 2 # multiply by 2^ i, i being the 3rd used register value
     
     li $v0, 1
     add $a0, $zero, $t0
     syscall