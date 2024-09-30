//Parameterized constructor

class Company {
  String? compName;
  int? empCount;

  Company(this.compName, this.empCount);
  void compInfo() {
    print(compName);
    print(empCount);
  }
}

void main() {
  Company obj1 = Company("Veritas", 1000);
  Company obj2 = new Company("Pubmatic", 2000);
  obj1.compInfo();
  obj2.compInfo();
}
