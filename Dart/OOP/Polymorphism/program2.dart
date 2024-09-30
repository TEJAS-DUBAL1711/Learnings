//overriding
// same as java
class Parent {
  void career() {
    print("Engineering");
  }

  void marry() {
    "Disha Patani";
  }
}

class Child extends Parent {
  void marry() {
    print("Shradhha Kapoor");
  }

  void proffesion() {
    print("Software Engineer");
  }
}

void main() {
  Child obj = new Child();
  obj.career();
  obj.marry();
  obj.proffesion();
}
