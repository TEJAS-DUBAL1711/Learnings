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
        backgroundColor: Color.fromARGB(255, 166, 208, 243),
        appBar: AppBar(
          title: Text("India Flag",style: TextStyle(color: Colors.black),),
          backgroundColor: Color.fromARGB(255, 220, 210, 210),
        ),
        body: Center(
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
                        child:  CircleAvatar(
                        child:Image.network(
                            "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 400,
                        color: Colors.green,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
