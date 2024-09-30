mixin Demo1 {
  int x = 10;
  void fun1() {
    print("In fun1-Demo1");
  }

  void fun2();
}

class DemoChild extends Demo1 {
  void fun2() {
    print("in fun2");
    print("$x");
  }
}

main() {
  DemoChild obj = DemoChild();
  obj.fun2();
  obj.fun1();
}
//Error: The superclass, 'Demo1', has no unnamed constructor that takes no arguments.
