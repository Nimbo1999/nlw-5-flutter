import 'package:dev_quiz/home/widgets/quiz_card/quiz_caard_widget.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button_widget.dart';
import './widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context: context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: "Facil",
                ),
                LevelButtonWidget(
                  label: "Medio",
                ),
                LevelButtonWidget(
                  label: "Dificil",
                ),
                LevelButtonWidget(
                  label: "Perito",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              children: [
                QuizCard(),
                QuizCard(),
                QuizCard(),
                QuizCard(),
                QuizCard(),
                QuizCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}