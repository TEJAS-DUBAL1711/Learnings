import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "INDIA FLAG",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 8, 234, 159),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: double.infinity,
                    width: 10,
                    color: Colors.brown,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 400,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 100,
                          width: 400,
                          color: Colors.white,
                          child: CircleAvatar(
                            child: Image.network(
                              "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 400,
                          color: const Color.fromARGB(255, 28, 104, 30),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
