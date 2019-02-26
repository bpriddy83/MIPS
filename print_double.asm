.data
     myDouble:   .double 7.202
     zeroDouble: .double 0.0

.text
     # move the double to a pair of registers. 64 bits, 2 registers must be used to hold a double
     ldc1 $f2, myDouble
     ldc1 $f0, zeroDouble
     
     li    $v0,  3
     add.d $f12, $f2, $f0
     syscall