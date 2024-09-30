import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizUI(),
    );
  }
}

class QuizUI extends StatefulWidget {
  const QuizUI({super.key});
  @override
  State createState() => _QuizUI();
}

class _QuizUI extends State {
  int queConut = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Quetion :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$queConut /10",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const SizedBox(
            child: Text(
              "which is your favourite player ?",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "1.Rohit Sharma",
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "2.Virat Kohali",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "3.Hardik Pandya",
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "4.Jasprit bomharha",
              )),
          const SizedBox(
            child: Text(
              "which is your favourite player ?",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: Text("Tejas Dubal"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (queConut < 10) {
                queConut++;
              }
            });
          },
          child: const Text("Next")),
    );
  }
}
