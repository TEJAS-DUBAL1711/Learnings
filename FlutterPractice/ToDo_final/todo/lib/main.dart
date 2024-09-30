import "package:flutter/material.dart";
import 'package:path/path.dart';
import 'package:todo/todo_model_class.dart';
import 'ToDoApp.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
void main()async {
  runApp(const MyApp());
  database=openDatabase(
    join(await getDatabasesPath(),"TODO.db"),
    version: 1,
    onCreate: (db, version)async {
      await db.execute(
        '''CREATE TABLE ToDoModelClass(
          taskNo INTEGER PRIMERY KEY,
          title TEXT,
          description TEXT,
          date TEXT,
        )
'''
      );
    },
  );


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}
