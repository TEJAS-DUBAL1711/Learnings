abstract class Developer {
  void develope() {
    print("We built softwares");
  }

  void devType();
}

class MobileDev implements Developer {
  void devType() {
    print("Flutter Dev");
  }
/*compulsory sagalya methodes la body dyavi lagte dart madhe jr ekadya class la implement karat aasel tr */
}

class WebDev extends Developer {
  void devType() {
    print("web Dev");
  }
}

void main() {
  Developer obj1 = new MobileDev();
  obj1.develope();
  obj1.devType();
  Developer obj2 = new WebDev();
  obj2.develope();
  obj2.devType();

  WebDev obj3 = new WebDev();
  obj3.develope();
  obj3.devType();
}
