import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_paddings.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  final Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppPaddings.all12,
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.red,
                    shape: const RoundedRectangleBorder()),
                child: Text(
                  buttonText,
                  style: AppTextStyle.w18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
