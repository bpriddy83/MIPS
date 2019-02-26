.data
     prompt:      .asciiz "Enter the value of Pi? \n"
     zeroAsFloat: .float 0.0
.text
     main:
     	# store a zero value
          lwc1 $f4, zeroAsFloat
          
          # prompt user
          li $v0, 4
          la $a0 prompt
          syscall
          
          # take user input
          li $v0, 6   #7 would be for a double
          syscall
          
          # Display value
          li $v0, 2 #3 for double
          add.d $f12, $f0, $f4 #user result was stored in f0
          syscall
          
          li $v0, 10
          syscall