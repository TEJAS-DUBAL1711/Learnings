import '../../Consistency/Inheritance/p2.dart';

abstract class Parent {
  void Property() => print("Gold,house,car");
  void career();
  void marry();
}

void main() {
  Parent obj =
      new Parent(); //rror: The class 'Parent' is abstract and can't be instantiated.
}
