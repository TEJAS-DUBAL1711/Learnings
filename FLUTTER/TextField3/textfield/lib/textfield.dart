import 'package:flutter/material.dart';

class Textfielddemo extends StatefulWidget {
  const Textfielddemo({super.key});
  @override
  State createState() => _Textfielddemo();
}

class _Textfielddemo extends State {
  bool flag = false;
  final TextEditingController _compName = TextEditingController();
  final TextEditingController _comploc = TextEditingController();
  final TextEditingController _compSal = TextEditingController();
  int cardno = 0;
  List compname = [];
  List comploc = [];
  List compSal = [];
  String cardinfo() {
    if (flag == true) {
      return "$_compName";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Company Iinformation",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          const Text("Company Name"),
          TextField(
            controller: _compName,
            decoration: InputDecoration(
              hintText: "Enter Company Name",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 30),
          const Text("Company Location"),
          TextField(
            controller: _comploc,
            decoration: InputDecoration(
              hintText: "Enter Company Location",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            onSubmitted: (value) {
              print("DATA SUBMITTED = $value");
            },
          ),
          SizedBox(height: 30),
          const Text("Company Salary"),
          TextField(
            controller: _compSal,
            decoration: InputDecoration(
              hintText: "Enter Company Salary in LPA",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  flag = true;
                  cardno++;
                  if (cardno < 0) {
                    cardno = 0;
                  }
                  if (cardno == 0) {
                    compname = [];
                    comploc = [];
                    compSal = [];
                  }
                  compname.add(_compName.text);
                  comploc.add(_comploc.text);
                  compSal.add(_compSal.text);
                });
              },
              child: const Text("Submit")),
          Expanded(
            child: ListView.builder(
                itemCount: cardno,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.orange, Colors.red],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(20)),
                        height: 150,
                        width: 300,
                        //color: Colors.amberAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text("Company Name :   ${compname[index]}"),
                            SizedBox(height: 30),
                            Text("company Location :   ${comploc[index]}"),
                            SizedBox(height: 30),
                            Text("company Salary :   ${compSal[index]}"),
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
