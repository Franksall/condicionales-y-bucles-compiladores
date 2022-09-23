.data
    msg1: .asciiz "\n Introduce la altura del triángulo (entero positivo): "
    msg2: .asciiz " *  "    
    msg3: .asciiz "\n "
.text
main:
#print string
	li $v0, 4
        la $a0, msg1
        syscall

# read integer
        li $v0, 5
        syscall

#print int
        move $a0, $v0
    	li $v0, 1
        syscall
	add $t4, $a0, 1
#print string
        li $v0, 4
        la $a0, msg3
        syscall
	li $t1, 0
	li $t2, 0
    Loop:
        bge $t1,$t4, Exit
        li $t2, 0 
        Loop2:
            bge $t2,$t1, Exit2

		#print string
		li $v0, 4
        	la $a0, msg2
        	syscall

            	add $t2, $t2, 1
        j Loop2
        Exit2:
	#print string
	li $v0, 4
        la $a0, msg3
        syscall
        add $t1, $t1, 1
    j Loop
    Exit:

    jr $ra
	