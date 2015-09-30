# the variable count contains the number of
# bytes in the vals array; the number of bytes
# will be 4 * number of elements; so the last
# valid memory position in the array is count-4

# store the sum of the array in the variable sum
        
.data
count:  .word 20                # 5 words * 4 bytes per word
vals:   .word 1, 2, 3, 4, 5
sum:    .word 0
        
.text   
.globl main

main:

        # your code here
	lw $t1, count
	la $t2, vals       
	add $t3, $zero,$zero
	add $t0, $zero,$zero

	loop:
	lw $t4, ($t2)
	add $t0, $t0, $t4
	add $t3, $t3, 4
	addi $t2, $t2, 4
	bne $t3,$t1,loop

        sw $t0, sum
        jr $ra                   # terminate
        
