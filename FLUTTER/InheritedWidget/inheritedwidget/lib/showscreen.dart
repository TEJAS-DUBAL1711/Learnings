import 'package:flutter/material.dart';
import 'main.dart';

class ShowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowScreen();
}

class _ShowScreen extends State {
  Widget build(BuildContext context) {
    SharedData obj = SharedData.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(obj.data.id),
            const SizedBox(
              height: 20,
            ),
            Text(obj.data.name),
            const SizedBox(
              height: 20,
            ),
            Text(obj.data.username),
          ],
        ),
      ),
    );
  }
}
