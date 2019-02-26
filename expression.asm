# expression.s 
# Evaluate the expression (10 + 9) and print the result.
# Equivalent C++ statement:	cout << (10 + 9) << endl; 
# Equivalent Java statement:	System.out.println(10+9); 

# Student:	Name	Date

# There are four parts to this program.
#      Evaluate the expression. 
#      Print the result. 
#      Print endl. 
#      Return. 

# Modify the code to accept user inputs
# Instead of integers for the first 2 lines of code, user inputs will be placed there

.text
.globl	main

main: 
	# Prompt the user to enter integer and store value
	# Repea
	# Put the final result in a0 to prepare for the syscall.
	li	$t0, 10		# Put 10 in a register 
	li	$t1, 9		# Put 9 in a register 
	add	$a0, $t0, $t1	# a0 = t0 + t1 

	# Print the integer result in a0
	li	$v0, 1		# Load the system call number 
	syscall 

	# Print endl.
	la	$a0, endl	# Load the address of the string 
	li	$v0, 4		# Load the system call number 
	syscall 

	# Return.
	li $v0, 10
    syscall

.data 

endl:	.asciiz	"\n" 

# $Id: expression.s,v 1.3 2006/05/25 13:42:10 parks Exp $
# Authors: Chris Nevison and Thomas M. Parks
