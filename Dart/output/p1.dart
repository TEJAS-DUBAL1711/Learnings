/* write(),    writeALL(),writeln(),addStream(),print() */
import 'dart:io';

void main() {
  int? empid;
  String? empName;
  double? sal;

  print("enter employee name");
  empName = stdin.readLineSync();
  print("enter employee id");
  empid = int.parse(stdin.readLineSync()!);
  print("enter employee salary");
  sal = double.parse(stdin.readLineSync()!);

  stdout.write("empid:$empid, empName:$empName,sal:$sal");
}
