
# num holds the numerator, denom holds the denominator;
# calculate remainder of num % denom and place in remainder

.data
num:       .word 77
denom:     .word 9
remainder: .word 0

.text
.globl main

main:

        # your code here
	lw $t1, num
	lw $t2, denom
	add $t0, $zero, $zero
	rem $t0, $t1, $t2
	sw $t0, remainder
        jr $ra