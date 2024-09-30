//Named Constructor

class Company {
  int? empCount;
  String? name;
  Company(this.empCount, this.name) {
    print("In Default constructor");
  }
  Company.named(this.empCount, this.name) {
    print("In named constructor");
  }

  void printdata() {
    print(empCount);
    print(name);
  }
}

void main() {
  Company obj1 = new Company(10, "John");
  Company obj2 = new Company.named(20, "Doe");
  obj1.printdata();
  obj2.printdata();
}
