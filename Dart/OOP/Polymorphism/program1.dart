/*dart is't support method overloading, because dart is dynamically typed language and method overloading requires static typed language */

class Demo {
  void fun() {
    print("in fun");
  }

  int fun(int x) {
    return x + 10;
  }
}

void main() {
  Demo obj = Demo();
  obj.fun();
  print(obj.fun(10));
}
