void main() {
  List num = [153, 123, 875, 370, 564, 371];
  int count = 0;
  for (int i = 0; i < num.length; i++) {
    int x = num[i];
    int sum = 0;
    while (x != 0) {
      int rem = x % 10;
      sum = sum + (rem * rem * rem);
      x = x ~/ 10;
    }
    if (sum == num[i]) {
      count++;
    }
  }
  print("count of Armstrong Numbers $count");
}
