//optional parameter with default value

class Company {
  int? empCount;
  String? compName;
  Company(this.empCount, {this.compName = "Apple"});

  void compInfo() {
    print(empCount);
    print(compName);
  }
}

void main() {
  Company obj1 = new Company(100);
  obj1.compInfo();
  new Company(200).compInfo();
}
//compName default set ahe tyala argument pass nahi karu shakat 