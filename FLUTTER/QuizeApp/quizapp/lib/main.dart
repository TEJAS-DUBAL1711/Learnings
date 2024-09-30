import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State {
  List<Map> allQuetions = [
    {
      "question": "Who is the founder of Microsoft ?",
      "options": ["Steve jobs", "jeff bezos", "Bill gates", "Elon musk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple ?",
      "options": ["Steve jobs", "jeff bezos", "Bill gates", "Elon musk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the founder of Amezon ?",
      "options": ["Steve jobs", "jeff bezos", "Bill gates", "Elon musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of Tesla ?",
      "options": ["Steve jobs", "jeff bezos", "Bill gates", "Elon musk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Google ?",
      "options": ["Steve jobs", "Lary Page", "Bill gates", "Elon musk"],
      "answerIndex": 1,
    },
  ];
  bool quetionScreen = true;
  int quetionIndex = 0;
  int selectedIndex = -1;
  int correctansCount = 0;

  MaterialStatePropertyAll<Color?>? setColor(int button) {
    if (selectedIndex != -1) {
      if (button == allQuetions[quetionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (button == selectedIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return null;
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void correctAnswersCount() {
    if (selectedIndex == allQuetions[quetionIndex]["answerIndex"]) {
      correctansCount++;
    }
  }

  Scaffold isquetionScreen() {
    if (quetionScreen) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Quetions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${quetionIndex + 1}/${allQuetions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuetions[quetionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              style: ButtonStyle(
                backgroundColor: setColor(0),
              ),
              child: Text(
                "A.${allQuetions[quetionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              style: ButtonStyle(
                backgroundColor: setColor(1),
              ),
              child: Text(
                "A.${allQuetions[quetionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              style: ButtonStyle(
                backgroundColor: setColor(2),
              ),
              child: Text(
                "A.${allQuetions[quetionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              style: ButtonStyle(
                backgroundColor: setColor(3),
              ),
              child: Text(
                "A.${allQuetions[quetionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (quetionIndex < 4) {
                selectedIndex = -1;
                quetionIndex++;
              } else {
                quetionScreen = false;
              }
            });
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: SizedBox(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              child: Image.network(
                "https://img.freepik.com/free-vector/realistic-illustration-gold-cup-with-red-ribbon-winner-leader-champion_1262-13474.jpg?size=626&ext=jpg",
                height: 200,
                width: 300,
              ),
            ),
            const Text("You have succussfully completed quize"),
            const SizedBox(
              height: 15,
            ),
            Text("Score:$correctansCount/${allQuetions.length}"),
          ]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isquetionScreen();
  }
}
