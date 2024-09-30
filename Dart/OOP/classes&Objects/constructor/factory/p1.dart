class Demo {
  static Demo obj1 = new Demo();

  Demo() {
    print("in constructor");
  }
  Demo fun() {
    print("in fun");
    return obj1;
  }
}

void main() {
  Demo obj = new Demo();
  obj.fun(); // ithe initialize zala object
  obj.fun(); // ithe hot nahi
  print(Demo.obj1);
}
// static variable ekadach initialize hote
/* static variable tyla access kela ki initialize hoto thats why 2 vela in constructor print hote */
