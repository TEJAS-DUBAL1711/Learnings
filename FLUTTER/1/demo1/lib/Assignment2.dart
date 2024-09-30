import 'package:flutter/material.dart';

class Ass2 extends StatefulWidget {
  const Ass2({super.key});

  @override
  State<StatefulWidget> createState() => Tejas();
}

class Tejas extends State {
  bool box1 = false;
  bool box2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app1"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1 ? Colors.black : Colors.blue,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            box1 = !box1;
                          });
                        },
                        child: Text("Button1")),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2 ? Colors.black : Colors.pink,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            box2 = !box2;
                          });
                        },
                        child: Text("Button2")),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
