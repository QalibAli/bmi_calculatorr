import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class BmiCm extends StatelessWidget {
  const BmiCm({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$height",
          style: AppTextStyle.w30b
        ),
        const Text(
          AppStrings.cm,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
