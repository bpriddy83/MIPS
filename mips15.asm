.data
     newLine: .asciiz "\n"
.text
     main:
     addi, $s0, $zero, 10
     
     jal increaseMyRegister
     
     jal printValue
     
     # signal end of program
     li $v0, 10
     syscall
     
     increaseMyRegister:
          addi $sp, $sp, -8 #the negetive 8 takes 4 bits of data to store 2 ints
          sw   $s0, 0($sp)
          sw   $ra, 4($sp)
          
          addi $s0, $s0, 30
          
          #nested procedure
          jal printValue
          
          #return to the caller
          lw $s0, 0($sp)
          lw $ra, 4($sp)
          addi $sp, $sp, 30
          
          li $v0, 4
          la $a0, newLine
          syscall
          
          jr $ra
          
     printValue:
          #print new value in fuction
          li $v0, 1
          move $a0, $s0
          syscall
          
          jr $ra