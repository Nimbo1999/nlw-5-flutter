import 'package:flutter/material.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

import '../chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12),
          border: Border.fromBorderSide(
            BorderSide(color: Color(0xFFE1E1E5), width: 1)
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 80,
                height: 80,
                child: ChartWidget(),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos Começar",
                      style: AppTextStyles.heading,
                    ),
                    Text(
                      "Complete os desafios e avance em conhecimento",
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
