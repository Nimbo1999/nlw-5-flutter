import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  const AnswerWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(
            color: isSelected ? _selectedBorderCardRight : AppColors.border,
          ))),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                title,
                style:
                    isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              )),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(
                        color: isSelected
                            ? _selectedBorderRight
                            : AppColors.border)),
                    borderRadius: BorderRadius.circular(40),
                    color: isSelected ? _selectedColorRight : Colors.white),
                child: isSelected
                    ? Icon(
                        _selectedIconRight,
                        size: 16,
                        color: Colors.white,
                      )
                    : null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
