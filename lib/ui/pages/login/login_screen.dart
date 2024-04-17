import 'package:bmi/constants/app_sized_box.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/constants/app_text_styles.dart';
import 'package:bmi/ui/pages/login/widgets/login_titels.dart';
import 'package:bmi/ui/widgets/global_input_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const LoginTitels(),
              GlobalInputWidget(
                hintText: 'Email',
                isSecure: false,
                controller: emailController,
              ),
              AppSizedBox.h26,
              GlobalInputWidget(
                hintText: 'Password',
                isSecure: true,
                controller: passwordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
