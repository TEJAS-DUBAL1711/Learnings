import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  State createState() => _ListViewBuilder();
}

class _ListViewBuilder extends State<ListViewBuilder> {
  List<List<String>> cricketFormat = [
    [
      "https://im.rediff.com/cricket/2022/nov/02kohli-fifty.jpg?w=670&h=900",
      "https://im.rediff.com/cricket/2023/jan/25surya1.jpg?w=670&h=900",
      "https://im.rediff.com/cricket/2019/jul/24gill.gif",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaQTlbi6Z1Do9I0shetJkLGPHtzd3i31KoJZg4jyOyNkZmuOjQfZEXoN72PLWjHg2HgWU&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFAlZfuU8_PYMcU1X2XKa6bQCBU-gxXN6jaA&usqp=CAU",
      "https://akm-img-a-in.tosshub.com/sites/visualstory/wp/2023/09/KL-Rahul-vs-PAK-AP-8.jpg?size=*:900",
    ],
    [
      "https://im.rediff.com/cricket/2016/oct/09virat1.jpg",
      "https://th-i.thgim.com/public/sport/tg3sft/article66925373.ece/alternates/FREE_1200/GettyImages-1341644304.jpg",
      "https://pbs.twimg.com/media/EqYKXD2XAAQNiIy.jpg",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.separated(
        itemCount: cricketFormat.length,
        separatorBuilder: (context, index) => Divider(), 
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text("List ${index + 1}"), 
              Container(
                height: 500, 
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: cricketFormat[index].length,
                  itemBuilder: (context, innerIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        cricketFormat[index][innerIndex],
                        height: 200,
                        width: 200, 
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
