.data

.text
     main:
          addi $a1, $zero, 50
          addi $a2, $zero, 100
          
          jal addNumbers
          
          #print out the sum
          li $v0, 1
          addi, $a0, $v1, 0
          syscall
     
     # tell the program to end
     li $v0, 10
     syscall
     
     addNumbers:
          add $v1, $a1, $a2
          
          #go back to where the function was called
          jr $ra