# Chapter 3 — Arithmetic Operations

**Course:** IT006 — Computer Architecture  
**Class:** IT006.R11.VMTN  
**Platform:** MARS MIPS Simulator

## Learning Objectives

After completing this lab, students should be able to:

1. Implement arithmetic operations using MIPS assembly.
2. Explain the roles of the `HI` and `LO` registers in multiplication and division.
3. Distinguish signed and unsigned arithmetic instructions.
4. Trace the steps of hardware multiplication and division algorithms.
5. Verify arithmetic results and explain overflow, quotient, and remainder where applicable.

## Part A — MIPS Arithmetic Lab

Students will implement and test:

- Addition and subtraction.
- Signed and unsigned multiplication.
- Signed and unsigned division.
- Retrieving results using `mfhi` and `mflo`.
- Testing boundary cases and explaining unexpected results.

Programs must be written in MIPS assembly and tested with the MARS simulator.

## Part B — Hardware Algorithm Simulation

Students will manually trace arithmetic algorithms using tables of register values and intermediate states.

### Multiplication

Trace the shift-and-add multiplication algorithm, including:

- Multiplicand.
- Multiplier.
- Partial product or accumulator.
- Shift operations.
- Final product.

### Division

Trace the shifted-divisor and subtraction-based division algorithm, including:

- Dividend.
- Divisor.
- Intermediate remainder.
- Quotient bits.
- Final quotient and remainder.

## Assessment

Assessment combines automated testing and algorithm explanations.

| Component | Evidence |
|---|---|
| MIPS implementation | Assembly source code |
| Automated tests | Test results from the grading workflow |
| Hardware simulation | Completed trace tables |
| Algorithm explanation | Reasoning about intermediate and final states |

Students must explain their reasoning and should not submit only final numerical answers.

## Submission

Follow the instructor's instructions for submitting source code, test results, trace tables, and explanations.

**Important:** This lab supplements the course materials on the LMS. Students should review the assigned lecture videos and slides before attempting the exercises.
