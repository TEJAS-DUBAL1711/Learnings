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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.red,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.blue,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.green,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.purple,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.red,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.yellow,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.red,
                ),
                Container(
                  height: 350,
                  width: 500,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
