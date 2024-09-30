int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int mult(int a, int b) {
  return a * b;
}

/*int div(int a, int b) { /*Error: A value of type 'double' can't be returned from a function with return type 'int'. */
  return a / b;
           ^
  return a / b;
} */

int div(int a, int b) {
  return a ~/
      b; /* ~/ is the integer division operator. It divides two numbers and returns the integer value of the result */
}

void main() {
  print(add(10, 5));
  print(sub(10, 5));
  print(mult(10, 5));
  print(div(10, 5));
}
//because a/b gives ans in double