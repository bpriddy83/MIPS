.data
     enterName: .asciiz "What is your name?\n"
     yourName:  .space 20
     greetings: .asciiz "Hello, " 
     
.text
     main:
     #prompt user for input
          li $v0, 4
          la $a0, enterName
          syscall
          
          #take user input to certain number of characters
          li $v0, 8
          la $a0, yourName
          li $a1, 20  #can enter 20 characters
          syscall
          
          #print Hello, 
          li $v0, 4
          la $a0, greetings
          syscall
          
          #print name
          li $v0, 4
          la $a0, yourName
          syscall
          
     #tell program to quit
     li $v0, 10
     syscall
     