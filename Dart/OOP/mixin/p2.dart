mixin DemoParent {
  void m1() {
    print("in m1-DemoParent");
  }
}

class Demo {
  void m2() {
    print("In m2-Demo");
  }
}

class DemoChild extends Demo with DemoParent {}

void main() {
  DemoChild obj = new DemoChild();
  obj.m1();
  obj.m2();
}
/*no need to override like interface with can simply inherite multipe mixins/classes and use their properties/methodes  */