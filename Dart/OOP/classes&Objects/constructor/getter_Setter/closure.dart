int x = 10;
void fun() {
  print("in fun");
}

void main() {
  print(x.runtimeType);
  print(fun.runtimeType); // () => void (represents object)
}
