import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24,),
          AnswerWidget(title: "Kit de desenvolvimento de interface de usuário", isSelected: false,),
          AnswerWidget(title: "Kit de desenvolvimento de interface de usuário", isSelected: true,),
          AnswerWidget(title: "Kit de desenvolvimento de interface de usuário", isSelected: false,),
          AnswerWidget(title: "Kit de desenvolvimento de interface de usuário", isSelected: false,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(onPressed: () => {print("Pular")}, child: Text("Pular")),
              TextButton(onPressed: () => {print("Confirmar")}, child: Text("Confirmar")),
            ],
          )
        ],
      ),
    );
  }
}