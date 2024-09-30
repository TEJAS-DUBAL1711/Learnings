import 'package:flutter/material.dart';

class Palendrome2 extends StatefulWidget {
  const Palendrome2({super.key});

  State createState() => Palendrome2State();
}

class Palendrome2State extends State {
  int _palindromeCount = 0;
  int _armstrongCount = 0;
  List<int> numbers = [121, 200, 323, 153, 9];
  int count1 = 0;
  int count2 = 0;
  int i = 0;

  void printCountPalin() {
    for (; i < numbers.length; i++) {
      if (isPalindrome(i)) {
        count1++;
      }
    }

    setState(() {
      _palindromeCount = count1;
    });
  }

  int j = 0;
  void printcountArmstrong() {
    for (; j < numbers.length; j++) {
      if (findArmstrong(numbers[j])) {
        print("${numbers[j]}");
        count2++;
      }
    }
    setState(() {
      _armstrongCount = count2;
    });
  }

  bool findArmstrong(int num) {
    int temp = num;
    int sum = 0;
    int count = findCount(num);
    while (temp != 0) {
      int rem = temp % 10;
      int product = 1;
      for (int i = 1; i <= count; i++) {
        product = product * rem;
      }
      sum = sum + product;
      temp = temp ~/ 10; // Update temp to move to the next digit
    }
    return sum == num;
  }

  int findCount(int num) {
    int cnt = 0;

    while (num != 0) {
      cnt++;
      num = num ~/ 10;
    }
    return cnt;
  }

  // bool findArmstrong(int num) {
  //   int temp = num;
  //   int sum = 0;
  //   int count = findCount(num);
  //   while (temp != 0) {
  //     int rem = temp % 10;
  //     int product = 1;
  //     for (int i = 1; i <= count; i++) {
  //       product = product * rem;
  //     }
  //     sum = sum + product;
  //   }
  //   return sum == num;
  // }

  // int findCount(int num) {
  //   int cnt = 0;

  //   while (num != 0) {
  //     cnt++;
  //     num = num ~/ 10;
  //   }
  //   return cnt;
  // }

  bool isPalindrome(int number) {
    int reverse = 0;
    int original = number;

    while (number > 0) {
      int digit = number % 10;
      reverse = reverse * 10 + digit;
      number = number ~/ 10;
    }

    return original == reverse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tejas"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: printCountPalin, child: Text("Button1")),
                SizedBox(
                  height: 20,
                ),
                Text("Palendrome:$_palindromeCount"),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: printcountArmstrong, child: Text("Button2")),
                SizedBox(
                  height: 20,
                ),
                Text("Armstrong:$_armstrongCount"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
