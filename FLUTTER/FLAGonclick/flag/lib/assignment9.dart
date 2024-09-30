import 'package:flutter/material.dart';

class Assignment9 extends StatefulWidget {
  const Assignment9({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment9State();
}

class _Assignment9State extends State {
  int _count = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("India Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Text("Add"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_count >= 0)
                ? Container(
                    height: 400,
                    width: 10,
                    color: Colors.brown,
                  )
                : Container(),
            Column(
              children: [
                (_count >= 1)
                    ? Container(
                        height: 50,
                        width: 150,
                        color: Colors.orange,
                      )
                    : Container(),
                (_count >= 2)
                    ? Container(
                        height: 50,
                        width: 150,
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: (_count >= 3)
                              ? Image.network(
                                  "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg")
                              : Container(),
                        ),
                      )
                    : Container(),
                (_count >= 4)
                    ? Container(
                        height: 50,
                        width: 150,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
