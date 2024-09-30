class Company {
  String? loc;
  String? companyName;
  Company() {
    this.companyName;
    this.loc;
  }

  void compInfo() {
    print(loc);
    print(companyName);
  }

  call() {}
}

class Employee extends Company {
  int? empId;
  String? empName;

  Employee(this.empId, this.empName, String companyName, String loc) {
    super();
  }

  void empInfo() {
    print(empId);
    print(empName);
  }
}

void main() {
  Employee obj = Employee(25, "madhur", "TCS", "Mumbai");
  obj.empInfo();
  obj.compInfo();
}
