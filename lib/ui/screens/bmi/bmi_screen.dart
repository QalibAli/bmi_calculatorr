import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/ui/screens/bmi/widgets/bmi_app_bar.dart';
import 'package:bmi/ui/screens/bmi/widgets/bmi_geder_view.dart';
import 'package:bmi/ui/screens/bmi/widgets/bmi_slider.dart';
import 'package:bmi/ui/screens/bmi/widgets/bmi_weight.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    late int weight = 65;
    late int age = 18;

    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: BmiAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const BmiGenderView(),
            const BmiSlider(),
            BmiWeight(
              weight: weight,
              age: age,
              onTap: () {
                weight++;
                age++;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
