function foo(x: int): int {
  if (x < 0) {
    return -1; // Indicate an error for negative input
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5);
}

This improved version includes input validation. If a negative integer is given, it returns -1. Otherwise, it behaves the same as the original function.