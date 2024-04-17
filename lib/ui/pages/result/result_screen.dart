import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:bmi/ui/pages/result/widgets/result_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: ResultAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              result.toStringAsFixed(1),
              style: AppTextStyle.w30b,
            ),
          )
        ],
      ),
    );
  }
}
