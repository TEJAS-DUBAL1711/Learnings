import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quetion8"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 169, 14, 14), width: 5),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 62, 61, 61),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
