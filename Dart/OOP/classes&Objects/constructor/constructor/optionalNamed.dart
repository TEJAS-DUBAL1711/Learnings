//optional named parameters
class Company {
  int? empCount;
  String? compName;
  double? sal;
  Company({this.empCount, this.compName, this.sal = 100000});
  void compInfo() {
    print(compName);
    print(empCount);
    print(sal);
  }
}

void main() {
  Company obj1 = new Company(compName: "veritas", sal: 10000, empCount: 15);
  obj1.compInfo();
  Company obj2 = new Company(compName: "veritas", empCount: 200);
  obj2.compInfo();
}
