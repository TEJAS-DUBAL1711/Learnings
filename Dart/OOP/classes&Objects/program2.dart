class Demo {
  int x = 10;
  static int y = 20;

  void printData() {
    print(x);
    print(y);
  }
}

void main() {
  Demo obj1 = new Demo();
  obj1.printData();

  Demo obj2 = Demo();
  obj2.printData();
  print("==============");

  obj1.y = 50;
  obj1.printData();
  obj2.printData();
}
/*Error: The setter 'y' isn't defined for the class 'Demo'.
 - 'Demo' is from 'Dart/OOP/classes&Objects/p2.dart'.    
Try correcting the name to the name of an existing setter, or defining a setter or field named 'y'.
  obj1.y = 50;*/