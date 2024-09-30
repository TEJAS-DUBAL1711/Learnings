import 'package:flutter/material.dart';

class TextfieldDemo extends StatefulWidget {
  const TextfieldDemo({Key? key}) : super(key: key);

  @override
  _TextfieldDemo createState() => _TextfieldDemo();
}

class _TextfieldDemo extends State<TextfieldDemo> {
  final TextEditingController _compName = TextEditingController();
  final TextEditingController _empName = TextEditingController();
  final TextEditingController _loc = TextEditingController();

  List list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: const Text("TextField-Demo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                TextField(
                  controller: _compName,
                  decoration: InputDecoration(
                    hintText: "Enter Company Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.purple.shade200,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _empName,
                  decoration: InputDecoration(
                    hintText: "Enter Employee Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.purple.shade200,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _loc,
                  decoration: InputDecoration(
                    hintText: "Enter Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.purple.shade200,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      list.add([_compName.text, _empName.text, _loc.text]);
                    });
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 100, right: 100),
              itemCount: list.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple.shade600, width: 5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Company Name:${list[index][0]}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("emp Name:${list[index][1]}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Location:${list[index][2]}"),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
