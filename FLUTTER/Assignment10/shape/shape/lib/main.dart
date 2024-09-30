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
          child: Row(
            children: [
              Container(
                height: 100,
                width: 150,

                //color: Colors.black,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(style: BorderStyle.solid)),
                //color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
