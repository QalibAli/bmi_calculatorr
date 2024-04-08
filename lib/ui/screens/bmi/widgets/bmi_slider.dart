import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/ui/screens/bmi/widgets/bmi_cm.dart';
import 'package:flutter/material.dart';

class BmiSlider extends StatefulWidget {
  const BmiSlider({super.key});

  @override
  State<BmiSlider> createState() => _BmiSliderState();
}

class _BmiSliderState extends State<BmiSlider> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: SizedBox(
                  child: ColoredBox(
                    color: AppColors.boxColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.height,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const BmiCm(),
                        Slider(value: 0.5, onChanged: (v) {})
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
