import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_input_border.dart';
import 'package:bmi/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class GlobalInputWidget extends StatefulWidget {
  const GlobalInputWidget({
    super.key,
    required this.hintText,
    required this.isSecure,
    required this.controller,
    required this.isEmail,
  });

  final String hintText;
  final bool isEmail;
  final bool isSecure;
  final TextEditingController controller;

  @override
  State<GlobalInputWidget> createState() => _GlobalInputWidgetState();
}

class _GlobalInputWidgetState extends State<GlobalInputWidget> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all18.copyWith(top: 0, bottom: 0),
      child: TextFormField(
        obscuringCharacter: "*",
        controller: widget.controller,
        obscureText: isPassword? false : widget.isSecure,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xff626262),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          prefixIcon: widget.isEmail ? const Icon(Icons.email) : null,
          suffixIcon: widget.isEmail
              ? null
              : GestureDetector(
                  onTap: () {
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  child: isPassword
                      ? const Icon(
                          Icons.visibility_outlined,
                        )
                      : const Icon(Icons.visibility_off_outlined),
                ),
          fillColor: AppColors.fillColor,
          filled: true,
          hintText: widget.hintText,
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
