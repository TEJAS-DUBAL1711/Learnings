import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spring Boot Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessageScreen(),
    );
  }
}

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  String _message = "Press the button to get a message";

  Future<void> fetchMessage() async {
    final url = Uri.parse(
        'http://192.168.1.35:8080/api/greet'); // Replace with your Spring Boot backend URL
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          _message = response.body;
        });
      } else {
        setState(() {
          _message = "Failed to fetch message";
        });
      }
    } catch (e) {
      setState(() {
        _message = "Error: $e";
      });
    }
  }

  void clearMessage() {
    setState(() {
      _message = "😅 oops!!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spring Boot Message'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4-EJZp_hvHmgmVAbq9mi_A48uHC8YWQRTa-j3sMdsOUrrzrdqpvukptA-q_1iRombVvo&usqp=CAU",
              width: 500,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: fetchMessage,
            child: Text('Get Message'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: clearMessage,
            child: Text('Clear Message'),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              _message,
              style: TextStyle(fontSize: 20, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
