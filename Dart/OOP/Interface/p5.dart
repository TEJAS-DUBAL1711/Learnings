abstract class InterfaceDemo1 {
  void m1() {
    print("in m1-interface");
  }
}

abstract class InterfaceDemo2 {
  void m1() {
    print("in m1-interface");
  }
}

class Demo implements InterfaceDemo1, InterfaceDemo2 {
  void m1() {
    print("in m1-Demo");
  }
}

void main() {
  Demo obj = Demo();
  obj.m1(); // Calling m1 from Demo

/*  (obj as InterfaceDemo1).m1(); // Explicitly calling m1 from InterfaceDemo1
  (obj as InterfaceDemo2).m1(); // Explicitly calling m1 from InterfaceDemo2*/
}
