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
      home: ToDo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({super.key});
  @override
  State createState() => _ToDo();
}

class _ToDo extends State {
  
  List<Color> clr = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.pink
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: clr[index],
              ),
              child: Column(
                children: [
                  Text(
                    "Lorem Ipsum is simply setting industry.",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/1829/1829412.png",
                            width: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Simply dummy text of the printing and typesetting\n industry. Lorem Ipsum has been the industry's\n standard dummy text ever since the 1500s\n",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.edit_outlined),
                      const SizedBox(
                        width: 2,
                      ),
                      const Icon(Icons.delete),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
