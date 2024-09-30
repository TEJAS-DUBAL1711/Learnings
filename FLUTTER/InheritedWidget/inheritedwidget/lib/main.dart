import 'package:flutter/material.dart';
import 'showscreen.dart';

void main() {
  runApp(const MyApp());
}

class SharedData extends InheritedWidget {
  final Employee data;
  const SharedData({super.key, required this.data, required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}

class Employee {
  String id;
  String name;
  String username;

  Employee({
    required this.id,
    required this.name,
    required this.username,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
      data: Employee(id: idc.text, name: namec.text, username: usernamec.text),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: login(),
      ),
    );
  }
}

class login extends StatefulWidget {
  const login({super.key});
  @override
  State createState() => _login();
}

final TextEditingController idc = TextEditingController();
final TextEditingController namec = TextEditingController();
final TextEditingController usernamec = TextEditingController();

class _login extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            TextFormField(
              controller: idc,
              decoration: const InputDecoration(
                  labelText: "Id",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 5,
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: namec,
              decoration: const InputDecoration(
                  labelText: "name",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 5,
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: usernamec,
              decoration: const InputDecoration(
                  labelText: "username",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 5,
                  ))),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ShowScreen();
                  }));
                },
                child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
