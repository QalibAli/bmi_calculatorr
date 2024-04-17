import 'package:bmi/constants/app_sized_box.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginTitels extends StatelessWidget {
  const LoginTitels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          AppStrings.loginHere,
          style: AppTextStyle.b30b,
        ),
        AppSizedBox.h26,
        Text(
          AppStrings.loginSubtitle,
          style: AppTextStyle.b20sb,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
