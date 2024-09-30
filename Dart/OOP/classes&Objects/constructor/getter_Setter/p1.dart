/*Private Variables

When you define a property for a class, you can access it from the outside of a class. The accessibility of the property is public.

To make the property private, you need to prefix its name with an underscore(_).*/
// dart madhe private variable same file madhe access karu shakto
//private variable scope: file scope
class Demo {
  int? _x;
  String? _str;
  Demo(this._str, this._x);
  void printData() {
    print(_str);
    print(_x);
  }
}

void main() {
  Demo obj = new Demo("tejas", 2);
  obj.printData();
  obj._str =
      "xyz"; /*object ha class cha manus ahe so karu shakato but baherun nahi access karu shakat*/
  obj._x = 12;
  obj.printData();
}
