import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _Login();
}

class _Login extends State {
  TextEditingController userName = TextEditingController();
  TextEditingController passward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Colors.pink,
              Colors.blue,
            ],
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/5087/5087579.png",
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            TextFormField(
              controller: userName,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter username",
                label: const Text("Username"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 2, color: Colors.pink.shade300),
                ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(15),
                //   borderSide: BorderSide(width: 2, color: Colors.pink.shade300),
                // ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passward,
              decoration: InputDecoration(
                  hintText: "Enter password",
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: Colors.blue))),
            ),
          ],
        ),
      ),
    );
  }
}
