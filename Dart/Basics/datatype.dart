import "dart:io";

void main() {
  // double x = 10;
  // print(x.runtimeType);

  double y = 23.3;
  print(y.runtimeType);

  num s = 10;
  print(s.runtimeType);

  num t = 10.5;
  print(t.runtimeType);

  var x = 10;
  print(x.runtimeType);

  var q = 10.5;
  print(q.runtimeType);

  var f = true;
  print(" bool ${f.runtimeType}");

  var su = Chodu();

  print(su.runtimeType);

  //su = 'tkd' as Chodu; error

// operators

  int p = 10;
  int o = 8;

  print(p /
      o); // it will give you exact value in java or other languages it will excpt reminder

  print(p ~/ o); // it will give same like java

  stdout.write("no next line   ");
  print("next line");
}

class Chodu {
  Chodu() {
    print("object");
  }
}
