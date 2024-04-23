import 'package:bmi/constants/app_paddings.dart';
import 'package:bmi/constants/app_sized_box.dart';
import 'package:bmi/ui/pages/bmi/bmi_screen.dart';
import 'package:bmi/ui/widgets/global_button.dart';
import 'package:bmi/ui/widgets/global_input_widget.dart';
import 'package:flutter/material.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlobalInputWidget(
          hintText: 'Email',
          isSecure: false,
          controller: emailController,
          isEmail: true,
        ),
        AppSizedBox.h26,
        GlobalInputWidget(
          hintText: 'Password',
          isSecure: true,
          controller: passwordController,
          isEmail: false,
        ),
        Padding(
          padding: AppPaddings.all18,
          child: Row(
            children: [
              Expanded(
                child: GlobalButton(
                  buttonText: 'Sign In',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BmiScreen(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
