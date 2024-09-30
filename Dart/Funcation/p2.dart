//Optional
// Parameters with default values

void main() {
  print("start main");
  fun(10);
  fun(10, 10.5);
}

void fun(int x, [double y = 20.5]) {
  print("in fun");
  print(x);
  print(y);
}
