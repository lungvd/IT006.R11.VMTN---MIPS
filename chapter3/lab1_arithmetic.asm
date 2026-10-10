# MIPS Arithmetic Lab — Exercise 1
# Class: IT006.R11.VMTN
#
# TODO:
# 1. Implement addition and subtraction.
# 2. Implement multiplication and retrieve HI/LO.
# 3. Implement division and retrieve quotient/remainder.
# 4. Print all results using MARS syscalls.
# 5. Explain the meaning of each result.

.data
    msg_add:   .asciiz "Addition: "
    msg_sub:   .asciiz "\nSubtraction: "
    msg_hi:    .asciiz "\nMultiplication HI: "
    msg_lo:    .asciiz "\nMultiplication LO: "
    msg_quot:  .asciiz "\nDivision quotient: "
    msg_rem:   .asciiz "\nDivision remainder: "
    newline:   .asciiz "\n"

.text
.globl main

main:
    # Input operands
    li $t0, 37
    li $t1, 6

    # TODO 1: Addition
    # add ...

    # TODO 2: Subtraction
    # sub ...

    # TODO 3: Multiplication
    # mult ...
    # mfhi ...
    # mflo ...

    # TODO 4: Division
    # div ...
    # mflo ...
    # mfhi ...

    # TODO 5: Print results

    li $v0, 10
    syscall
