import 'package:flutter/material.dart';

class middleE extends StatelessWidget {
  const middleE({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Start-Start",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 75,
              width: 75,
              color: Colors.red,
            ),
            Container(
              height: 75,
              width: 75,
              color: Colors.green,
            ),
            Container(
              height: 75,
              width: 75,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
