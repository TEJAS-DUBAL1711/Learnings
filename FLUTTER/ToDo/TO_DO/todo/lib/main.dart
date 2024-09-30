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
      home: ToDo(),
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  State createState() => ToDoState();
}

class ToDoState extends State {
  List colorlist = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 14, 95, 100),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    height: 112,
                    width: 330,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 230, 226, 226),
                          offset: Offset(10, 10),
                          blurRadius: 8,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: colorlist[index % colorlist.length],
                    ),
                    child: Column(
                      children: [
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Image.asset("todo/assets/Group 42.png"),
                              //child: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKMAAACUCAMAAADIzWmnAAAAZlBMVEX///8AAAA4ODgnJyeHh4eXl5fLy8u3t7eqqqrGxsa0tLTDw8P5+fmxsbG+vr7y8vLs7Ozb29s+Pj7l5eV2dnYyMjKfn5/T09NJSUkLCwtjY2MhISFdXV1sbGxXV1cVFRWPj49/f38Qc3qvAAAEAklEQVR4nO3c2ZaiMBAGYBERbJEtIIri8v4vOcy4EKCSEFKQ9Jz8V31hH78DApVU6WplY2NjY2Nj8+uSBhu9CVKBcLd29Ge94xE3unnvbNhET7ftG49F/NEto/IDE8NMN4xKFoLGrW5XJ1vQmOtmdZKDRpNOdXOyQaMJt8Y2a6HxXHvLp5YyZiV8Wc2bsMwkjPHCuk+S8cbnwrQ29WgjfG9aIsdfYAysESXWiBNDjGGSlmVK4IeEEcYkyG+Fe3FPtVeaaUzys9MmGyr1G48Xp5s8Mc34dAa59RbTmo3JbUhsisDue2k21hDRcYrO6dZrDCDg3+Qh+CoNxrRgGZ2DKUbOFsiaOpA6jTGb6DiRGUafZ7yaYax4xqJdPh00GtlXTJN7+34ajYnLM1JXtkYj4RsDa/x/jIJrpt2j12k88YwuMcJ4hGwAR6cxgWyftB9Hqm2goaZgVI//QlWQWo3bO5N4pF6m1chuod3oQlyvMWQdyM4Cdg5jWD6qajNqZzqBewJR50UzGMm7p1NBew79pEBz5dzrueEbyXdNfyfiV6+S68DY71WjGxNq28EdcyRXUWeNvfYGnxFsY9i552X9bREwcfT8/EMFNfx9ZOPT6aQY2TAJyd73/TQGrzNk42BRf0Po6uAat+e+kV7fGWEsoVtypdzBwzTGcCOZM6uxuDFk9eMf5hjZMzaB6F+XMh4g3Sv9h5suY8SuBZ1+kaDJmAqGGlQqOywjdx3axIWH2koP7Mh0E6EYQ+4W2CtAEfQaQyhEM3k4xjEzadkA6b9LJBESxcjd7Pzm1CuC2uX1kI9uLEcRGyRdX8T0Hf/CreEQjGT0LFXeIpPu2vrKQ6obGU9pMPUHObhV8ZDKxvA5ntggX5RoWMPV7PJI2cjdWBome6Rkdx0SeeWRqpHzlJYNc8hJ0ZjiEdnztmpGwt3mlM4ReAtVYwx2nxUCF5pKRvxB2D22cYbJ8TtUaCoYfW5VOzEX4HTtJxsJdJNTD1AETTYKOkDTsx4gpxrHVLUTk/W3X6Ya55xtv/Xqi4lG5kAJDrJ7JKcZgb0n1FTqRjKv0Ol9MWGKMVngSwx0pbaTNzL3nlBDFUETjM8liHQRJG8ct1BVzz2YbNzP8ZSGs5toTOd6BAL5jCvIGnELb0HeG1lyxhmf0nCIvPGxMPG1EyRlXOqSplKE9PcHxcbdzE9pMKdYwlgy+uFzpw4ljqNoO3muVO3eocioi9ic7u9f4u8X6o814sQacWKNOLFGnFgjTqwRJ9aIE2vECWzkjZkvnxo0mvTzPawf8OF+v27xMAY+JXvos4bRl13Fi+5CcXNiz82agjwxhc2RNOOXuTz+9DEJrq7eXIMxM/s2NjY2NjY2NrL5AzuITwmzMBh9AAAAAElFTkSuQmCC",height: 30,width: 30,),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Lorem Ipsum is simply setting industry.",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "10 July 2023",
                              style: GoogleFonts.quicksand(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ));
  }
}
