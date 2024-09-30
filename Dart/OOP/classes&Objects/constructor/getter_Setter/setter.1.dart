import 'setter.dart';

void main() {
  Demo obj = new Demo(10, "test", 10000);
  obj.printdata();
  obj.setX = 12; //implicitely call hoto (automatically)
  obj.setSal = 12000;
  obj.setStr = "tejas";
  obj.printdata();
}
