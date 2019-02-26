.data
     message:  .asciiz "The numbers are euqal.\n"
     message2: .asciiz "The numbers are different.\n"
     message3: .asciiz "The first number is less than the second.\n"
     message4: .asciiz "The first number is greater than the secons.\n"
     
.text
     main:
     	#set the numbers
          addi $t0, $zero, 5
          addi $t1, $zero, 20
     
     #check if they are equal
          beq $t0, $t1, numbersEqual
          
          bne $t0, $t1, numbersNotEqual
          
          sll $s0, $t0, $t1
          bne $s0, $zero, smaller
          beq $s0, $zero, larger
           	
     
     # the program ends here
          li $v0, 10
          syscall
     
     numbersEqual:
     li $v0, 4
     la $a0, message
     syscall
     
     # the program ends here
          li $v0, 10
          syscall
     
     numbersNotEqual:
     li $v0, 4
     la $a0, message2
     syscall
     
     
     # the program ends here
          li $v0, 10
          syscall
     smaller:
     li $v0, 4
     la $a0, message3
     syscall
     
     # the program ends here
          li $v0, 10
          syscall
     
     larger:
     li $v0, 4
     la $a0, message4
     syscall
     
     
     # the program ends here
          li $v0, 10
          syscall
    