import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState() => _MyHomePageState();
}

/*class _MyHomePageState extends State {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextField",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SizedBox(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              //enabled: false,
              decoration: InputDecoration(
                //labelText: "First Name",
                hintText: "Enter text",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                // helperText: "Email",
                //filled: true,
                // fillColor: Colors.amber,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.purpleAccent, width: 5.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
} */
class _MyHomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TextField"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: TextField(
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              // filled: true,
              border: OutlineInputBorder(),
              //icon: Icon(Icons.person),
              // prefix: Icon(Icons.person),
              prefixIcon: Icon(Icons.person),
              // suffix: Icon(Icons.abc),
              suffixText: 'user',
              // prefix: CircleAvatar(child: Icon(Icons.person)),
              //suffix: CircularProgressIndicator(),

              hintText: "Contact no.",
            ),
            cursorColor: Colors.green,
            cursorWidth: 5,
            //showCursor: false,
            //maxLines: 2,
            //maxLength: 3,
            obscureText: true,
            obscuringCharacter: '#',
            
          ),
        ),
      ),
    );
  }
}
