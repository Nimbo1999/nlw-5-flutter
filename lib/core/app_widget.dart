import 'package:flutter/material.dart';
import 'package:dev_quiz/home/home_page.dart';
import 'package:dev_quiz/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dev_quiz",
      home: HomePage(),
    );
  }
}
