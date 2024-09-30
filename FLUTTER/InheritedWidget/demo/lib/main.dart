import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Company();
  }
}

class Company extends InheritedWidget {
  final String companyName;
  final int empCount;

  const Company({
    super.key,
    required this.companyName,
    required this.empCount,
    required super.child,
  });

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override
  bool updateShouldNotify(Company oldWidget) {
    return companyName != oldWidget.companyName;
  }
}
