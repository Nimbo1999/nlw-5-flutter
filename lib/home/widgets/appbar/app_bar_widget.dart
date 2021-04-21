import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/core/app_gradients.dart';

import '../score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({required BuildContext context})
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 190 + MediaQuery.of(context).padding.top,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: "Matheus Lopes",
                                  style: AppTextStyles.titleBold)
                            ])),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.fromBorderSide(
                                BorderSide(color: AppColors.purple, width: 2)
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/42950729?s=400&u=43f4efdd8199d2e3bb146d3089dd97f5e04e06d6&v=4"))),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: ScoreCardWidget()
                  )
                ],
              ),
            ));
}
