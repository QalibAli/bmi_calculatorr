import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/app_paddings.dart';
import 'package:bmi/constants/app_strings.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_cm.dart';
import 'package:flutter/material.dart';

class BmiSlider extends StatefulWidget {
  const BmiSlider({
    super.key,
    required this.value,
    required this.height,
    required this.onChanged,
  });
  final double value;
  final double height;
  final Function(double) onChanged;

  @override
  State<BmiSlider> createState() => _BmiSliderState();
}

class _BmiSliderState extends State<BmiSlider> {
  @override

  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: AppPaddings.all12,
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
                        BmiCm(
                          height: widget.height,
                        ),
                        Slider(
                          value: widget.value,
                          onChanged: widget.onChanged,
                        )
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
