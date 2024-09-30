import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Flag(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Flag extends StatefulWidget {
  const Flag({Key? key});

  @override
  State createState() => _Flag();
}

class _Flag extends State {
  int count = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "INDIA FLAG",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.brown,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: const Color.fromARGB(255, 199, 123, 9),
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/d6/c7/c8/d6c7c88c00561033998548475e8dfb15.jpg",
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: const Color.fromARGB(255, 13, 87, 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.next_plan),
      ),
    );
  }
}
