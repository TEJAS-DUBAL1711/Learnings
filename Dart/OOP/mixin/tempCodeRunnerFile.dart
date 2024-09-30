mixin DemoParent {
  void m1() {
    print("in m1-Demoparent");
  }
}

mixin class Demo {
  void m1() {
    print("in m1-Demo");
  }
}

class DemoChild with Demo, DemoParent {}

void main() {
  DemoChild obj = new DemoChild();
  obj.m1();
}