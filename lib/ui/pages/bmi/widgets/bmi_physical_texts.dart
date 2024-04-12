import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class BmiPhysicalTexts extends StatelessWidget {
  const BmiPhysicalTexts({
    super.key,
    required this.isWeight,
    required this.weight,
    required this.age,
  });

  final bool isWeight;
  final int weight;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          isWeight ? AppStrings.weight : AppStrings.age,
          style: AppTextStyle.w18,
        ),
        Text(
          isWeight ? "$weight" : "$age",
          style: AppTextStyle.w30b,
        ),
      ],
    );
  }
}
