import 'package:flutter/material.dart';
//import 'package:row/assignment2.dart';
//import 'package:row/assignment3.dart';
//import 'assignment1.dart';
//import 'assignment4.dart';
//import 'assignment5.dart';
//import 'assignment6.dart';
//import 'assignment7.dart';
import 'assignment8.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: assignment1(),
      // home: assignment2(),
      home: assignment8(),
      debugShowCheckedModeBanner: false,
    );
  }
}
