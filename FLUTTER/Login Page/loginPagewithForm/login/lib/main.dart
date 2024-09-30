//login page UI using FormState (Form)

import 'package:flutter/material.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State createState() => _LoginPage();
}

class _LoginPage extends State {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  // GlobalKey<FormFieldState> usernamekey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  GlobalKey<FormState> globalkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 20, 200),
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: globalkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/5087/5087579.png",
                width: 90,
                height: 90,
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                //  key: usernamekey,
                controller: username,
                decoration: InputDecoration(
                  hintText: "Enter User name",
                  label: const Text("Enter User name"),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Username";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                //key: passwordKey,
                controller: password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  label: const Text("Enter Password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // bool isvalidateusername =
                  //     usernamekey.currentState!.validate();

                  // bool isvalidatepassword =
                  //     passwordKey.currentState!.validate();

                  bool isvalidate = globalkey.currentState!.validate();

                  if (isvalidate) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("login Successful")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("login failled")),
                    );
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 107, 20, 200)),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text("login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
