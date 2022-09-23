.data
    msg1: .asciiz "Introduce la altura del triángulo (entero positivo): "
    msg2: .asciiz " "
    msg3: .asciiz "\n"
.text
main:
#print string
        li $v0, 4
        la $a0, msg1
        syscall

        # read integer
        li $v0, 5
        syscall

        move $a0, $v0
#print int
    	li $v0, 1
        syscall
    	
#print string
        li $v0, 4
        la $a0, msg3
        syscall


	li $t1, 1
	li $t2, 0
	add $t4, $a0, 1
    Loop:
        bge $t1,$t4, Exit
	add $t3, $t1, 0
        Loop2:
            bge $t2,$t1, Exit2

            # print int
            add $t5, $t3, 0
	    move $a0, $t5
            li $v0, 1
            syscall
	    #print string
	    li $v0, 4
            la $a0, msg2
            syscall
            sub $t3, $t3, 2
        j Loop2
        Exit2:
	#print string
	li $v0, 4
        la $a0, msg3
        syscall
        add $t1, $t1, 2
    j Loop
    Exit:

    jr $ra