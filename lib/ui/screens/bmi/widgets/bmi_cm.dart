import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class BmiCm extends StatelessWidget {
  const BmiCm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "177",
          style: AppTextStyle.w30b
        ),
        Text(
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
