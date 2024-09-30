import 'package:flutter/material.dart';
import 'assignment3.dart';
import 'assignment2.dart';
import 'assignment1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Assignment3(),
      //home: Assignment2(),
      home: Assignment1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
