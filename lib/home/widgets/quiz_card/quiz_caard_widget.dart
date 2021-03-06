import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border)
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          Text("Gerenciamento de estado", style: AppTextStyles.heading15,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text("3 de 10", style: AppTextStyles.body11,)
              ),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(value: 0.3,),
              )
            ],
          )
        ],
      ),
    );
  }
}