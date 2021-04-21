import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16 + statusBarHeight, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Questão 04", style: AppTextStyles.body,),
                Text("de 10", style: AppTextStyles.body,)
              ],
            ),
          ),
          ProgressIndicatorWidget(value: 0.5)
        ],
      ),
    );
  }
}