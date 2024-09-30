class Company {
  int? empCount;
  String? compName;

  Company(this.empCount, [this.compName = "Veritas"]);
  void compInfo() {
    print(compName);
    print(empCount);
  }
}

void main() {
  Company obj1 = new Company(100);
  obj1.compInfo();
  Company obj2 = new Company(200, "Pubmatic");
  obj2.compInfo();
}

// pass karu shakto nahi kel tri veritas yenar
