class Demo1 {
  Demo1._private() {
    print("in constructor");
  }
  factory Demo1() {
    print("in factory constructor");
    return Demo1._private();
  }
  void function() {
    print("in function demo");
  }
}
