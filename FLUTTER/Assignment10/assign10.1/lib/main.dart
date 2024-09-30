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
          title: Text(
            "TJ7",
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
          backgroundColor: Colors.pink,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
