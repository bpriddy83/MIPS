.data
     message: .asciiz "Hi, everybody. \nMy name is Bryanna,\n"
.text
     main:
          jal displayMessage
          
          addi $s0, $zero, 5
          
          #print the number 5 to the screen
          li $v0, 1
          add $a0, $zero, $s0
          syscall
     
     #tell the system the program is done
     li $v0 10
     syscall
     
     displayMessage:#function
          li $v0, 4
          la $a0, message
          syscall
          
          jr $ra #go back to where the funcion was called