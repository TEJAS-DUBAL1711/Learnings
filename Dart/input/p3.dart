import 'dart:io';

void main() {
  print(stdin.runtimeType);
  String? age = stdin.readLineSync();
  print("name:$age");
}
