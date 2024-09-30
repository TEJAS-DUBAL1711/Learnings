import 'dart:io';

void main() {
  print(stdin.runtimeType);
  int age = stdin.readLineSync();
  print("age:$age");
}
/*
Dart/input/p2.dart:5:19: Error: A value of type 'String?' can't be assigned to a variable of type 'int'.
  int age = stdin.readLineSync*/