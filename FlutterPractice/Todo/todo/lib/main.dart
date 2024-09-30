import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});
  @override
  State createState() => _Todo();
}

class _Todo extends State {
  List<Color> list = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 150,
            width: 330,
            decoration: BoxDecoration(
              color: list[index],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        radius: 38,
                        child: Image.asset(
                          "assets/Group 42.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(132, 132, 132, 1),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Lorem Ipsum is simply setting industry.",
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Simply dummy text of the printing and typesetting\n industry.Lorem Ipsum has been the industry's\nstandard dummy text ever since the 1500s",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.quicksand(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(84, 84, 84, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 230,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.delete_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
