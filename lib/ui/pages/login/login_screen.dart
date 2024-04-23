import 'package:bmi/constants/app_sized_box.dart';
import 'package:bmi/ui/pages/login/widgets/login_auth.dart';
import 'package:bmi/ui/pages/login/widgets/login_titels.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginTitels(),
              AppSizedBox.h26,
              LoginAuth(),


            ],
          ),
        ),
      ),
    );
  }
}
