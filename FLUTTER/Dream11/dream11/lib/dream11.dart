import 'package:flutter/material.dart';

class Dream11 extends StatefulWidget {
  const Dream11({Key? key}) : super(key: key);

  @override
  State createState() => _Dream11();
}

class _Dream11 extends State<Dream11> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 139, 22, 14),
        title: const Text(
          "DREAM11",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 139, 22, 14),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.sports_cricket_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_cricket_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_kabaddi_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_football_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_basketball_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_hockey_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_basketball_sharp,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_volleyball_outlined,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.sports_handball_sharp,
                          color: Colors.white,
                        ),
                        Text("Cricket"),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Upcoming Matches"),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(15),
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text("Indian Football League"),
                            Spacer(),
                            Icon(Icons.format_line_spacing_outlined),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxi-Bibc-RuIHjraAOKVP1zA8vCIqjn2wM2A&usqp=CAU",
                              ),
                            ),
                            Text("6:30pm"),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxi-Bibc-RuIHjraAOKVP1zA8vCIqjn2wM2A&usqp=CAU",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("3 teams"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("1 Contest"),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
