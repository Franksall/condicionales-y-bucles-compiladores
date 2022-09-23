.data
    msg1: .asciiz "\n Entroduce el dividendo "
    msg2: .asciiz "\n Introduce el divisior:  "    
    msg3: .asciiz "\n ¡Error! No se puede dividir por 0."
    msg4: .asciiz "\n division es: "
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
	

	move $t4, $a0

#print string
	li $v0, 4
        la $a0, msg2
        syscall

# read integer
        li $v0, 5
        syscall

        move $a0, $v0
#print int
    	li $v0, 1
        syscall
	

	move $t3, $a0
#string t3=0
	li $t1,0
# if $v0 (valor leido) igual a $t4(max)
    	beq $t3, $t1, si      	# se usa si es <= 
	else:
		la $a0, msg4
		li $v0, 4
        	syscall

        	div $a0, $t4, $t3
        	li $v0, 1
		b endsi

    	si:
		li $v0,4
        	la $a0, msg3
   	endsi:
	syscall

	jr $ra