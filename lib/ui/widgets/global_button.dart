import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton(
      {super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            backgroundColor: AppColors.blue),
        child: Text(
          buttonText,
          style: AppTextStyle.w20b700,
        ),
      ),
    );
  }
}
