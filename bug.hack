function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if a large number is passed to the `foo` function.  This is because the function recursively calls itself without a base case that stops the recursion. The base case `x == 0` is correct. The error happens when x is a large negative number.  The recursive calls will continue until the stack overflows.