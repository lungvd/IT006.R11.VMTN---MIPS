# ==================================================
# IT006.R11.VMTN - MIPS
# Computer Architecture
#
# First MIPS Assembly Program
# ==================================================

.data

message: .asciiz "Hello from MIPS!\n"

.text
.globl main

main:

    # Print string
    li $v0, 4
    la $a0, message
    syscall

    # Exit program
    li $v0, 10
    syscall
