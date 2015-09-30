
# num holds the numerator, denom holds the denominator;
# calculate quotient of num / denom and place in quotient

.data
num:      .word 77
denom:    .word 9
quotient: .word 0

.text
.globl main

main:

        # your code here
	lw $t1, num
	lw $t2, denom
	div $t0,$t1,$t2
	sw $t0, quotient

        jr $ra