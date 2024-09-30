import 'dart:io';

int x = 0;
int add1 = 10;
int add2 = 1;
int count = 0;

void main() {
  for (int i = 1; i <= 4; i++) {
    for (int j = 1; j <= 4; j++) {
      x = x + add1;
      stdout.write("$x  ");
      count++;
      if (count % 10 == 0) {
        int temp = add1;
        add1 = add2;
        add2 = temp;
      }
    }
    print("");
  }
}
