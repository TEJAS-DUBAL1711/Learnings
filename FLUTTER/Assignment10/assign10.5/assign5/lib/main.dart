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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "asset/pexels-life-of-pix-7613.jpg",
                height: 150,
                width: 150,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "asset/pexels-lukas-kloeppel-466685.jpg",
                height: 150,
                width: 150,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "asset/pexels-selcuk-teke-3684396.jpg",
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
