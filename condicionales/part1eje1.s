
	
.data
    msg1: .asciiz "\nIngrese tu edad: "
    msg2: .asciiz "\nEs mayor de edad "    
    msg3: .asciiz "\nEs menor de edad "

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
    	li $v0, 1
        syscall
    	move $t4, $a0
#string t3=18
	li $t3,18
    	# if $v0 (valor leido) igual a $t4(max)
    	ble $t3, $t4, si      	# se usa si es <= 
	else:
		la $a0, msg3
		b endsi

    	si:
        	la $a0, msg2
   	endsi:
	li $v0, 4 #print string
	syscall

	jr $ra