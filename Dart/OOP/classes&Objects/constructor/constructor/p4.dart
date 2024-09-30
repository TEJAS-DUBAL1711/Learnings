//const constructor

class Company {
  // int? empCount; //Context: Field isn't final, but constructor is 'const'.
  // String? companyName;

  final int? empCount;
  final String? companyName;

  const Company(this.empCount, this.companyName);
  void compInfo() {
    print(companyName);
    print(empCount);
  }
}

void main() {
  Company obj = new Company(123, "veritas");
  obj.compInfo();
}
// note: constant constructor madhe fields final aasane compulsory ahe.(fields:instance variables)