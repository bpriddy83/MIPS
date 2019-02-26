.data
     numberOne: .word 7
     numberTwo: .word 8

.text
     lw $t0, numberOne($zero)
     lw $t1, numberTwo($zero)
     
     add $t2, $t0, $t1
     
     li $v0, 1
     add $a0, $zero, $t2
     syscall