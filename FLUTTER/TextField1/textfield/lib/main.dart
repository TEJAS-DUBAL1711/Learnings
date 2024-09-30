import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextfieldDemo(),
    );
  }
}

class TextfieldDemo extends StatefulWidget {
  const TextfieldDemo({super.key});
  @override
  State createState() => _TextfieldDemo();
}

class _TextfieldDemo extends State {
  final TextEditingController _compName = TextEditingController();
  final TextEditingController _empName = TextEditingController();
  final TextEditingController _locName = TextEditingController();

  int flag = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 193, 113, 207),
                  Color.fromARGB(255, 133, 30, 151),
                  Colors.deepPurple
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _compName,
                    decoration: InputDecoration(
                      hintText: "Dream Company",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _empName,
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _locName,
                    decoration: InputDecoration(
                      hintText: "Location",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          flag = 1;
                        });
                      },
                      child: const Text("SUBMIT")),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              (flag == 1)
                  ? Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Company Name:${_compName.text}",
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Name:${_empName.text}",
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Location:${_locName.text}",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
