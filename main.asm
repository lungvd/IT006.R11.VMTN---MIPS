# ==================================================
# IT006.R11.VMTN - MIPS
# Assignment: MAX(A + 2B, 3C)
#
# Input:
#   A
#   B
#   C
#
# Output:
#   F = max(A + 2B, 3C)
#
# Final result must be in $v0
# ==================================================

.text
.globl main

main:

    # Read A
    li $v0, 5
    syscall
    move $t0, $v0

    # Read B
    li $v0, 5
    syscall
    move $t1, $v0

    # Read C
    li $v0, 5
    syscall
    move $t2, $v0

    # Calculate A + 2B
    sll $t3, $t1, 1
    add $t3, $t0, $t3

    # Calculate 3C
    add $t4, $t2, $t2
    add $t4, $t4, $t2

    # F = max(A + 2B, 3C)
    bge $t3, $t4, first_is_larger
    move $v0, $t4
    j print_result

first_is_larger:
    move $v0, $t3

print_result:

    # Print integer
    move $a0, $v0
    li $v0, 1
    syscall

    # Exit
    li $v0, 10
    syscall
