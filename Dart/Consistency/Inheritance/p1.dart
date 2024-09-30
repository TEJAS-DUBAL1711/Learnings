class Parent {
  int x = 10;
  String str = "surename";

  void parentDisp() {
    print("In parent disp method");
  }
}

class Child extends Parent {}

void main() {
  Child obj = new Child();
  print(obj.x);
  print(obj.str);
  obj.parentDisp();
}
