abstract class Developer {
  Developer() {
    print("Dev Constructor");
  }
  void devType();
  void develope() {
    print("build s/w");
  }
}

class MobileDev implements Developer {
  MobileDev() {
    //parent constructor la call jat nahi because abstract ahe instance banat nhi
    Developer();
    print("MobileDev constructor");
  }
  void develope() {
    print("built  s/w for mobile");
  }

  void devType() {
    print("flutter dev");
  }
}

void main() {
  Developer obj = MobileDev();
}
/*Error: The class 'Developer' is abstract and can't be instantiated.
    Developer(); */