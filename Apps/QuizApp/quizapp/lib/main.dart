import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
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
      "question": "Who is the Founder of MicroSoft ?",
      "options": ["Stive Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the Founder of Apple ?",
      "options": ["Stive Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the Founder of Amezon ?",
      "options": ["Stive Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the Founder of Tesla ?",
      "options": ["Stive Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the Founder of Google ?",
      "options": ["Stive Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedanswerIndex = -1;
  int noOfCorrectanswers = 0;

  Scaffold homeScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuizeApp"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHmjxohwT3OhZ5qLKWg0YwDCj1-tnj5rlXp1ReIbjhNfw9BKOoClbVnWCTjHGTlmmTgfw&usqp=CAU",
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedanswerIndex != -1) {
      if (buttonIndex == allQuetions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedanswerIndex == buttonIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedanswerIndex == -1) {
      return;
    }
    if (selectedanswerIndex == allQuetions[questionIndex]["answerIndex"]) {
      noOfCorrectanswers++;
    }
    if (selectedanswerIndex != -1) {
      if (questionIndex == allQuetions.length - 1) {
        setState(() {
          questionScreen = false;
        });
      }
      selectedanswerIndex = -1;
      setState(() {
        questionIndex++;
      });
    }
  }

  Scaffold isQuestionsScreen() {
    if (questionScreen == true) {
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions :",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuetions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                "${allQuetions[questionIndex]["question"]}",
                textAlign: TextAlign.center,
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
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(280, 30)),
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedanswerIndex == -1) {
                    setState(() {
                      selectedanswerIndex = 0;
                    });
                  }
                },
                child: Text(
                  "A.${allQuetions[questionIndex]["options"][0]}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(280, 30)),
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedanswerIndex == -1) {
                    setState(() {
                      selectedanswerIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B.${allQuetions[questionIndex]["options"][1]}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(280, 30)),
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedanswerIndex == -1) {
                    setState(() {
                      selectedanswerIndex = 2;
                    });
                  }
                },
                child: Text(
                  "C.${allQuetions[questionIndex]["options"][2]}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(280, 30)),
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedanswerIndex == -1) {
                    setState(() {
                      selectedanswerIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D.${allQuetions[questionIndex]["options"][3]}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.network(
              "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribb0n-confetti_51486-122.jpg",
              height: 300,
              width: double.infinity,
            ),
            const Text(
              "Congratulations!!!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You have completed the Quiz",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "$noOfCorrectanswers/${allQuetions.length}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                questionIndex = 0;
                selectedanswerIndex = -1;
                questionScreen = true;
                noOfCorrectanswers = 0;
                setState(() {});
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // return isQuestionsScreen();
    return homeScreen();
  }
}
