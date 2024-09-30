import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';

dynamic database;

class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;
  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return '{name:$name,jerNo:$jerNo,runs:$runs,avg:$avg}';
  }
}

Future insertPlayerData(Player obj) async {
  final localDB = await database;

  localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Player>> getPlayerData() async {
  final localDB = await database;

  List<Map<String, dynamic>> listPlayers = await localDB.query("Player");
  return List.generate(listPlayers.length, (i) {
    return Player(
      name: listPlayers[i]['name'],
      jerNo: listPlayers[i]['jerNo'],
      runs: listPlayers[i]['runs'],
      avg: listPlayers[i]['avg'],
    );
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE Player(
          name TEXT,
          jerNo INTEGER PRIMERY KEY,
          runs INT,
          avg REAL
        )''');
    },
  );

  Player batsman1 =
      Player(name: "virat Kolhi", jerNo: 18, runs: 10000, avg: 50.30);

  insertPlayerData(batsman1);
  Player batsman2 = Player(
    name: "Rohit Sharma",
    jerNo: 45,
    runs: 40000,
    avg: 10.33,
  );
  insertPlayerData(batsman2);
  Player batsman3 = Player(
    name: "Shubman Gill",
    jerNo: 77,
    runs: 80000,
    avg: 30.33,
  );
  await insertPlayerData(batsman3);
  print(await getPlayerData());
}
