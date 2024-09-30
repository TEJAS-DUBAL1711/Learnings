/*
void main() {
  List num = [234, 121, 457, 333, 342, 117];

  int count = 0;
  for (int i = 0; i < num.length; i++) {
    int x = num[i];
    int rev = 0;
    while (x != 0) {
      int rem = x % 10;
      rev = rev * 10 + rem;
      x = x ~/ 10;
    }
    if (rev == num[i]) {
      count++;
    }
  }
  print("count of pelendrome numbers is $count");
}
*/

void main() {
  List<int> num = [234, 121, 457, 333, 342, 117];

  int count = 0;
  for (int i = 0; i < num.length; i++) {
    int x = num[i];
    int rev = 0;

    while (x != 0) {
      int rem = x % 10;
      rev = rev * 10 + rem;
      x = x ~/ 10; // Update the value of x by removing the last digit
    }

    if (rev == num[i]) {
      count++;
    }
  }

  print("Count of palindrome numbers is $count");
}
