import 'package:dev_quiz/challenge/challenge_page.dart';
import 'package:dev_quiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: ChallangePage(),
    );
  }
}