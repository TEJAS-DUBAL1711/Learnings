abstract class developer {
  developer() {
    print("we built softwares");
  }
  void devType();
}

class MobileDev extends developer {
  void devType() {
    print("Flutter Dev");
  }
}

class WebDev extends developer {
  void devType() {
    print("Web Dev");
  }
}

void main() {
  MobileDev obj1 = MobileDev();
  obj1.devType();
  WebDev obj2 = WebDev();
  obj2.devType();
  //developer obj3=developer();  ERROR
}
