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
            title: const Text(
          "Container Styling",
          style: TextStyle(fontSize: 15),
        )),
        body: Center(
          child: SizedBox(
            child: Container(
              height: 200,
              width: 200,
              //color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blue, width: 5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purple,
                    offset: Offset(30, 30),
                    blurRadius: 8,
                  ),
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(20, 20),
                    blurRadius: 8,
                  ),
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(10, 10),
                    blurRadius: 8,
                    // spreadRadius: 5,
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.pink, Colors.green],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
