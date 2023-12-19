import 'package:flutter/material.dart';
import 'package:project_manager/HomePage.dart';
import 'package:project_manager/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
      },
    );
  }
}
