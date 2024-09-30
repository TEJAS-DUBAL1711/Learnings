//Optional positional Parameters

void main() {
  print("start main");
  fun(10);
  fun(10, 10.5);
}

void fun(int x, [double? y]) {
  print("in fun");
  print(x);
  print(y);
}
