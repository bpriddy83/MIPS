.data
     newLine: .asciiz "\n"
.text
     main:
     addi, $s0, $zero, 10
     
     jal increaseMyRegister
     
     li $v0, 1
     move $a0, $s0
     syscall
     
     # signal end of program
     li $v0, 10
     syscall
     
     increaseMyRegister:
          addi $sp, $sp, -4 #the negetive 4 takes 4 bits of data to store the int
          sw   $s0, 0($sp)
          
          addi $s0, $s0, 30
          
          #print new value in fuction
          li $v0, 1
          move $a0, $s0
          syscall
          
          #return to the caller
          lw $s0, 0($sp)
          addi $sp, $sp, 30
          
          li $v0, 4
          la $a0, newLine
          syscall
          
          jr $ra