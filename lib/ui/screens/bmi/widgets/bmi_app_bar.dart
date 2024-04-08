import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:flutter/material.dart';

class BmiAppBar extends StatelessWidget {

  const BmiAppBar({ super.key });

   @override
   Widget build(BuildContext context) {
       return AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          AppStrings.appName,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      );
  }
}