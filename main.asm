# ==================================================
# IT006.R11.VMTN - MIPS
# Auto-Grading Test
#
# Task:
# Calculate 5 + 7
# Expected result: 12
#
# The final result must be in $v0
# ==================================================

.text
.globl main

main:

    li $t0, 5
    li $t1, 7

    add $v0, $t0, $t1

    # Print result
    move $a0, $v0
    li $v0, 1
    syscall

    # Exit
    li $v0, 10
    syscall
