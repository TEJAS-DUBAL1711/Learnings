import 'dart:io';

void main() {
  int age = int.parse(stdin.readLineSync()!);
  print(age);
}
// note: string is nullable hence ! is required