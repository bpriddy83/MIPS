# AUTHOR: BRIANNA PRIDDY
# COMP ORG TR 10am
# ASSIGNMENT 2


.data
string1: .asciiz "Enter the integer: "
string2: .asciiz "Number of 0's: "
string3: .asciiz "Number of 1's: "
endl:	.asciiz "\n"
.text
.globl main
main:
	li $v0, 4		# printing the first prompt
	la $a0, string1
	syscall
	
	li $v0, 5		# reading the integer
	syscall
	
	move $a0, $v0		# saving the input in $a0
	
############# WRITE YOUR CODE BELOW ######################
	addi $t1, $t1, 32	# start a counter to check 32 bits
	
	checkBits:
	     beq  $t1, $zero, END	# if the counter reaches zero, end program
	     andi $t0, $a0,   1 		# check the first bit 
	     beq  $t0, $zero, addZero	# if zero, add 1 to zero counter
	     bne  $t0, $zero, addOne	# if one, add 1 to zero counter
	
	addZero:
	     addi $s0, $s0, 1		#add 1 to zero counter
	     srl  $a0, $a0, 1		# push out that bit to check the next bit
	     sub  $t1, $t1, 1		# subtract 1 from the counter
	     j    checkBits     	# loop again
	
	addOne:
	     addi $s1, $s1, 1		#add 1 to one counter
	     srl  $a0, $a0, 1		# push out that bit to check the next bit
	     sub  $t1, $t1, 1		# subtract 1 from the counter
	     j    checkBits     	# loop again
	
	END:     
############ WRITE YOUR CODE ABOVE ########################
	li $v0, 4		# printing the "Number of 0's: " string
	la $a0, string2
	syscall
	
	move $a0, $s0		# printing the actual result
	li $v0, 1
	syscall
	
	la $a0, endl		# printing the newline
	li $v0, 4
	syscall
	
	li $v0, 4		# printing the "Number of 1's: " string
	la $a0, string3
	syscall
	
	move $a0, $s1		# printing the actual result
	li $v0, 1
	syscall
	
	li $v0, 10		# ending the program
	syscall
	
