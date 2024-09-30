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
      home: bottomSheetClass(),
    );
  }
}

class bottomSheetClass extends StatefulWidget {
  const bottomSheetClass({super.key});

  State createState() => bottomSheetClassState();
}

class bottomSheetClassState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    const Text("Create task"),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Company:",
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Sumbit")),
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
