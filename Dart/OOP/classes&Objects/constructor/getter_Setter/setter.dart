class Demo {
  int? _x;
  String? str;
  double? _sal;

  Demo(this._x, this.str, this._sal);

  set setX(int x) => _x = x;
  set setStr(String name) => str = name;
  set setSal(double sal) => _sal = sal;

  void printdata() {
    print(_x);
    print(_sal);
    print(str);
  }
}
