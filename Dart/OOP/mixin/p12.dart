mixin Demo1 {
  void fun1() {
    print("in fun1-Demo1");
  }
}
mixin Demo2 on Demo1 {
  void fun2() {
    print("in fun2-Demo2");
  }
}

class DemoChild with Demo2 {}

void main() {
  DemoChild obj = DemoChild();
  obj.fun1();
  obj.fun2();
}
//this is because when the 'on' keyword is used on mixin class method does not come inside another mixin class.it is considered an abstract method 