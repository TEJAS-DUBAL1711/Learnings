//Lambda function or Arrow Function:

int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
int div(int a, int b) => a ~/ b;

void main() {
  print(add(10, 20));
  print(sub(25, 10));
  print(mul(50, 10));
  print(div(50, 5));
}
