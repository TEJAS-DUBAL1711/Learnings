import 'package:flutter/material.dart';

class startS extends StatelessWidget {
  const startS({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Start-Start",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 75,
            width: 75,
            color: Colors.red,
          ),
          Container(
            height: 75,
            width: 75,
            color: Colors.green,
          ),
          Container(
            height: 75,
            width: 75,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
