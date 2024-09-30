mixin Demo1 {
  void fun1() {
    print("in fun 1");
  }

  void fun2();
}
mixin Demo2 {}

class DemoChild with Demo1, Demo2 {}

void main() {
  Demo1 obj = DemoChild();
  obj.fun1();
  obj.fun2();
}
