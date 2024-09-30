import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
  bool inedit = false;
  List<ModelclassToDo> card = [
    const ModelclassToDo(
        "tejas dilip dubal",
        "atfgafbnfd,m,fdnbdmnbmmnbjhbsjbvndbndbnbvnxbvnzmnxcjhsdgfjhsbjfsj",
        "12/12/24"),
  ];
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  List<Color> list = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1)
  ];
  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

              ///TO AVOID THE KEYBOARD OVERLAP THE SCREEN
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.date_range_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    String formatedDate =
                        DateFormat.yMMMd().format(pickeddate!);

                    setState(() {
                      dateController.text = formatedDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: () {
                    (inedit)
                        ? setState(() {})
                        : setState(() {
                            card.add(ModelclassToDo(
                                titleController.text,
                                descriptionController.text,
                                dateController.text));
                          });
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Expanded(
          child: ListView.builder(
            itemCount: card.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      color: list[index % list.length],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Image.asset(
                                "assets/Group 42.png",
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    card[index].title,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    card[index].description,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color:
                                          const Color.fromRGBO(84, 84, 84, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                card[index].date,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(132, 132, 132, 1),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  inedit = true;
                                  showBottomSheet();
                                  card.add(ModelclassToDo(
                                      titleController.text,
                                      descriptionController.text,
                                      dateController.text));
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  weight: 13,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    card.remove(card[index]);
                                  });
                                },
                                child: const Icon(Icons.delete_outlined,
                                    weight: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ModelclassToDo {
  final String title;
  final String description;
  final String date;

  const ModelclassToDo(this.title, this.description, this.date);
}
