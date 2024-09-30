import 'package:flutter/material.dart';

class ToggleBox extends StatefulWidget {
  const ToggleBox({super.key});
  @override
  State createState() => _ToggleBox();
}

class _ToggleBox extends State {
  int box1count = 0;
  int box2count = 0;

  Color box1Color() {
    if (box1count == 1) {
      return Colors.red;
    } else if (box1count == 2) {
      return Colors.green;
    } else if (box1count == 3) {
      box1count = 0;
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  Color box2Color() {
    if (box2count == 1) {
      return Colors.red;
    } else if (box2count == 2) {
      return Colors.green;
    } else if (box2count == 3) {
      box2count = 0;
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Box Color"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: box1Color(),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    box1count++;
                  });
                },
                child: const Text("BUTTON1"),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: box2Color(),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    box2count++;
                  });
                },
                child: const Text("BUTTON2"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
