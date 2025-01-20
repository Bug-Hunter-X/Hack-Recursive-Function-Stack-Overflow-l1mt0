# Hack Recursive Function Stack Overflow

This repository demonstrates a stack overflow error in a Hack recursive function when a large negative integer is provided as input.

The `foo` function calculates the factorial of a number using recursion.  While the base case (`x == 0`) is correctly defined, the function doesn't handle negative inputs appropriately leading to unbounded recursion.

## Bug Description
The `foo` function lacks proper handling for negative inputs. When a large negative number is passed, the function keeps calling itself recursively until the stack overflows, causing the program to crash.

## Bug Solution
The solution adds input validation to check for negative numbers. If a negative number is provided, it returns an error message, preventing the stack overflow.

## How to Reproduce
1. Clone this repository.
2. Compile the `bug.hack` file using the Hack assembler.
3. Run the resulting VM file.
4. Observe the stack overflow error when providing a large negative integer as input.

## How to Fix
1. Implement input validation to check for negative inputs.
2. Handle negative inputs gracefully, either by returning an error or using an alternative algorithm.