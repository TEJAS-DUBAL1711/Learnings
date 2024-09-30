import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg",
                    fit: BoxFit.cover,
                    height: 300,
                    width: 150,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276_640.jpg",
                    fit: BoxFit.cover,
                    height: 300,
                    width: 150,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg",
                    height: 300,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
