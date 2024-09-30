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
  Parent obj = new Parent();
  obj.career();
  obj.marry();
  obj.proffesion(); //Error: The method 'proffesion' isn't defined for the class'Parent'.
}
