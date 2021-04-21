import 'package:dev_quiz/challenge/widgets/question_indication/question_indicator_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallangePage extends StatefulWidget {
  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: QuestionIndicatorWidget(),
      ),
      body: Container(
        // color: Colors.red,
        child: QuizWidget(title: "O que o Flutter faz em sua\ntotalidade?",),
      ),
    );
  }
}