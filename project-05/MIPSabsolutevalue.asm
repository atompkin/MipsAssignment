
# val holds the original value, absolute value should
# be calculated and saved into absval

.data
val:    .word -10
absval: .word 0

.text
.globl main

main:

        # your code here
	lw $t1, val
	
	bgt $t1,$zero, jmp	
	mul $t0, $t1, -1
	jmp:
	sw $t0, absval

        jr $ra