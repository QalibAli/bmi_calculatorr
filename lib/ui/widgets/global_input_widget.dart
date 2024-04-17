import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_input_border.dart';
import 'package:bmi/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GlobalInputWidget extends StatelessWidget {
  const GlobalInputWidget({
    super.key,
    required this.hintText,
    required this.isSecure,
    required this.controller,
  });

  final String hintText;
  final bool isSecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all18.copyWith(top: 0, bottom: 0),
      child: TextFormField(
        obscuringCharacter: "*",
        controller: controller,
        obscureText: isSecure,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xff626262),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          fillColor: AppColors.fillColor,
          filled: true,
          hintText: hintText,
          enabledBorder: AppInputBorders.enabledBorder.copyWith(
            borderSide: BorderSide.none,
          ),
          focusedBorder: AppInputBorders.enabledBorder,
          errorBorder: AppInputBorders.errorBorder,
          focusedErrorBorder: const OutlineInputBorder(),
          disabledBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
