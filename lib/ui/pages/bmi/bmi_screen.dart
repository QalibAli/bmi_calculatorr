import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_paddings.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_app_bar.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_geder_view.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_slider.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_weight.dart';
import 'package:bmi/ui/pages/result/result_screen.dart';
import 'package:bmi/ui/widgets/global_button.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  late int weight = 65;
  late int age = 18;
  late double initialValue = 1;

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: BmiAppBar(),
        ),
        body: Padding(
          padding:  AppPaddings.all12,
          child: Column(
            children: [
              const BmiGenderView(),
              BmiSlider(
                value: initialValue,
                height: initialValue * 220,
                onChanged: (v) {
                  initialValue = v;
                  setState(() {});
                },
              ),
              BmiWeight(
                weight: weight,
                age: age,
                onAgeIncrementTap: () {
                  age--;
                  setState(() {});
                },
                onWeightDecrementTap: () {
                  weight++;
                  setState(() {});
                },
                onWeightIncrementTap: () {
                  weight--;
                  setState(() {});
                },
                onAgeDecrementTap: () {
                  age++;
                  setState(() {});
                },
              ),
              GlobalButton(
                onPressed: () {
                  final result = (weight * age) / (initialValue);
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        result: result,
                      ),
                    ),
                  );
                },
                buttonText: AppStrings.calculate,
              )
            ],
          ),
        ),
      ),
    );
  }
}
