import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class BmiGender extends StatelessWidget {
  const BmiGender({super.key, required this.isMale});

  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            height: 200,
            child: ColoredBox(
              color: AppColors.boxColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isMale ? Icons.male : Icons.female,
                    size: 80,
                    color: AppColors.white,
                  ),
                  Text(
                    isMale ? AppStrings.male : AppStrings.feMale,
                    style: AppTextStyle.w18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
