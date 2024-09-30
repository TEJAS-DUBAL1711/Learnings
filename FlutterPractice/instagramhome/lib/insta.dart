import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<StatefulWidget> createState() => _insta();
}

class _insta extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Image.network(
                "https://cdn.pixabay.com/photo/2016/11/08/05/18/hot-air-balloons-1807521_640.jpg"),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_outlined,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
