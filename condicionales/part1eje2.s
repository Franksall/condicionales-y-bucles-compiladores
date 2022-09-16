.data
	
	msg1: .asciiz "\nIngresa contra: \n "
    msg2: .asciiz "\nCoincide "    
    msg3: .asciiz "\nNo coincide"
    buffer: .space 20	
.text
main: # Start of code section
        li $v0, 4
        la $a0, msg1
        syscall
        
	li $a1, 10 #maximo numero de caracteres a leer
	li $v0, 8 #para leer un string
	la $a0, buffer
	syscall
	move $t4, $v0

	li $t4, 4 #print string
	la $a0, buffer
	syscall


	jr $ra #retrun to caller