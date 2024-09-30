import 'package:flutter/material.dart';
import 'assignment9.dart';
import 'flag.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Flag1(),
      home: Assignment9(),
      debugShowCheckedModeBanner: false,
    );
  }
}
