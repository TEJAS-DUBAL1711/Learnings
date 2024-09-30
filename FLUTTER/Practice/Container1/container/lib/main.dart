import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: container1(),
    );
  }
}

class container1 extends StatefulWidget {
  const container1({super.key});
  State createState() => _container1();
}

class _container1 extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("container"),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.purple.shade700,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(20, 20),
                  blurRadius: 10,
                )
              ]),
          /*child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTME5r6Urma4UNAw5LPrN4uUOTHnJQKNvv6PvFGNZ8JVA&s",
            width: 30,
            height: 30,
          ),*/
        ),
      ),
    );
  }
}
