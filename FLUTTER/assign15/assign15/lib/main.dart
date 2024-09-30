import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  List<int> list = [1];
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListViewBuilderDemo"),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              color: Colors.black,
              child: Text(
                "${list[index]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            list.add(count);
          });
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
