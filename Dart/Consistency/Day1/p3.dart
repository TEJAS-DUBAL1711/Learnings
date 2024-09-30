import 'dart:io';

void main() {
  const int x = 10;
  //const int z;
  print(x);
  const y = 30;
  print(y);
  const str = 1;
  print(str.runtimeType);
  print(str);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("$j ");
    }
    print('');
  }
}
