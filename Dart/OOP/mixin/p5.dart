import '../classes&Objects/constructor/factory/p2.dart';

mixin Demo1 {
 /* Demo1(){
     // Error: Mixins can't declare constructors.
  }  */
  void fun1() {
    print("In fun1-Demo1");
  }

  void fun2();
}

void main() {
  Demo1 obj = new Demo1();
}
//can't create obj of mixin