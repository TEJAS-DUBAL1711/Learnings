import 'package:flutter/material.dart';
import 'package:pelendromeui/pelendrome2.dart';
import 'pelendrome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Palindrome(),
      home: Palendrome2(),
    );
  }
}
