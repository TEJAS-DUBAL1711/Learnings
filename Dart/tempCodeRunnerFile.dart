void main() {
  List num = [153, 123, 875, 370, 564, 371, 145];
  int count = 0;
  int factorial(int num) {
    int fact = 1;
    for (int i = 1; i <= num; i++) {
      fact = fact * i;
    }
    return fact;
  }

  for (int i = 0; i < num.length; i++) {
    int sum = 0;

    int x = num[i];
    while (x != 0) {
      int rem = x % 10;
      sum = sum + factorial(rem);
      x = x ~/ x;
    }
    if (num[i] == sum) {
      count++;
    }
  }
  print("count of Strong Numbers $count");
}
