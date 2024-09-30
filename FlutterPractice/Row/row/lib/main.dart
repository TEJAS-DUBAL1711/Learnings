import 'package:flutter/material.dart';
import 'package:row/startM.dart';
import 'startS.dart';
import 'startE.dart';
import 'middleS.dart';
import 'middleM.dart';
import 'middleE.dart';
import 'endS.dart';
import 'endM.dart';
import 'endE.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: endE(),
    );
  }
}
