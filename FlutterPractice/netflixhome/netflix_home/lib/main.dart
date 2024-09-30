import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     title: "Netflix-Clone",
     theme:  ThemeData(
      primarySwatch: Colors.blue,
     ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>_HomePageState();

}
class _HomePageState extends State{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        type:
      ),
    )
  }
}
