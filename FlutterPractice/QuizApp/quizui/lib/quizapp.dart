import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Map<int, Widget> mp = {
    1: Container(
      child: const Column(
        children: [
          Text("Q1. What is an array?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("data")),
          ElevatedButton(onPressed: null, child: Text("sdnk")),
          ElevatedButton(onPressed: null, child: Text("sdnk")),
          ElevatedButton(onPressed: null, child: Text("sdnk")),
        ],
      ),
    ),
    2: Container(
      child: const Column(
        children: [
          Text("Q2. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    3: Container(
      child: const Column(
        children: [
          Text("Q3. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    4: Container(
      child: const Column(
        children: [
          Text("Q4. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    5: Container(
      child: const Column(
        children: [
          Text("Q5. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    6: Container(
      child: const Column(
        children: [
          Text("Q6. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    7: Container(
      child: const Column(
        children: [
          Text("Q7. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    8: Container(
      child: const Column(
        children: [
          Text("Q8. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    9: Container(
      child: const Column(
        children: [
          Text("Q9. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
    10: Container(
      child: const Column(
        children: [
          Text("Q10. Another question?"),
          SizedBox(height: 15),
          ElevatedButton(onPressed: null, child: Text("option 1")),
          ElevatedButton(onPressed: null, child: Text("option 2")),
          ElevatedButton(onPressed: null, child: Text("option 3")),
          ElevatedButton(onPressed: null, child: Text("option 4")),
        ],
      ),
    ),
   
  };

  int no = 1;

  void showNextQuestion() {
    setState(() {
      
      if (no < 10) {
        no++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Question:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$no/10",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          
          mp[no] ??
              Container() ,
          
          
              
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showNextQuestion,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
