import 'package:flutter/material.dart';

class Flag1 extends StatefulWidget {
  const Flag1({super.key});

  State createState() => flag();
}

class flag extends State {
  int _count = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "जय हिंद...",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_count >= 0)
                ? Container(
                    height: 600,
                    width: 15,
                    color: Colors.brown,
                  )
                : Container(),
            Column(
              children: [
                (_count >= 1)
                    ? Container(
                        height: 50,
                        width: 300,
                        color: Colors.orange,
                      )
                    : Container(),
                (_count >= 2)
                    ? Container(
                        height: 50,
                        width: 300,
                        color: Colors.white,
                        child: CircleAvatar(
                          radius: 25.0,
                          child: (_count >= 3)
                              ? Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                )
                              : Container(),
                        ),
                      )
                    : Container(),
                (_count >= 4)
                    ? Container(
                        height: 50,
                        width: 300,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count = -1;
              });
            },
            child: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
