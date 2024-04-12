import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultAppBar extends StatelessWidget {

  const ResultAppBar({ super.key });

   @override
   Widget build(BuildContext context) {
       return AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Result' , style: AppTextStyle.w18,),
        centerTitle: true,
      );
  }
}