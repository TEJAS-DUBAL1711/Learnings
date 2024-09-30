import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});
  @override
  State createState() => _Assignment15();
}

class _Assignment15 extends State {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 225, 151, 238),
        title: const Text(
          "Portfolio",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Name:Tejas Dubal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwubkKsF_lBiBVy3bWVkVN5Ema3oUrG08vTQ&usqp=CAU",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "College:NBNSSOE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://www.campusoption.com/images/colleges/logos/20_12_16_073958_logo.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "DreamComp:Google",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://freepngimg.com/save/66904-logo-now-google-plus-home-free-png-hq/2272x1704",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.navigate_next,
        ),
      ),
      // backgroundColor: Colors.black,
    );
  }
}
