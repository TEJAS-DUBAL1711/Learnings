import 'dart:io';

class Demo {
  int? x = int.parse(stdin.readLineSync()!);
  static int? y = int.parse(stdin.readLineSync()!);

  void info() {
    print(y);
    print(x);
  }
}

void main() {
  Demo obj = new Demo();
  obj.info();
}
/*dart madhe class madhe direct input gheu shakato other programming languages madhe method chya aat madhun gheto */