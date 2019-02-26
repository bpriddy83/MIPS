.data

.text
     addi $t0, $zero, 30
     addi $t1, $zero, 5
     
     div $s0, $t0, $t1 # there are multiple ways to divide
     
     # print to screen
     
     li $v0, 1
     add $a0, $zero, $s0
     syscall
     
     # another method
     
     div $s0, $t0, 10 # divide 30 by 10
     
          
     # print to screen
     
     li $v0, 1
     add $a0, $zero, $s0
     syscall
     
     # a third method using 2 registers, divide 30 by 5
     
     div $t0, $t1 # stores to lo register
     
     mflo $s0 # s0 has the quotient
     mfhi $s1 # s1 has the remainder
     
     # print to screen
     
     li $v0, 1
     add $a0, $zero, $s0
     syscall