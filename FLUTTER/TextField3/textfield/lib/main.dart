import 'package:flutter/material.dart';
import 'textfield.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Textfielddemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
