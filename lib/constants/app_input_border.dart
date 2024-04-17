import 'package:bmi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppInputBorders {
  AppInputBorders._();

  static const enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.blue,
      width: 2,
      style: BorderStyle.solid
    ),
  );

  static const errorBorder = OutlineInputBorder(
      borderSide: BorderSide(
    color: AppColors.red,
  ));
}
