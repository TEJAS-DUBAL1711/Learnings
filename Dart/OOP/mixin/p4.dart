// importanc of mixin

abstract class Demo1 {
  void fun1() {
    print("sjhj");
  }

  void fun2();
}

abstract class Demo2 {
  void fun3() {}
  void fun4();
}

class DemoChild implements Demo1, Demo2 {
  void fun2() {
    print("jsdj");
  }

  void fun4() {}
}

void Main() {
  DemoChild obj = new DemoChild();
  obj.fun1();
  obj.fun2();
  obj.fun4();
}

//note: in  dart's interface we need to give implementation to all methodes of parent class

//so mixin overcome this issue