	.data
prompt:	.asciiz "Enter a number:\n"
nwln:	.asciiz "\n"

	.text
	.globl main
main:
	addiu $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addiu $fp, $sp, 8
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	move $a0, $v0
	li $s0, 0
	li $s1, 32
	bne $s0, $s1, loop
	li $v0, 0
	j epilog
	nop

loop:
	addiu $s0, $s0, 1
	andi $t0, $a0, 1
	bgtz $t0, odd
	sra $a0, $a0, 1
	bne $s0, $s1, loop
	nop
	j epilog
	nop

odd:
	bne $s0, $s1, loop
	addiu $v0, $v0, 1
	j epilog
	nop

epilog:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, nwln
	syscall
	lw $fp, 0($sp)
	lw $ra, 4($sp)
	jr $ra
	addiu $sp, $sp, 8 

