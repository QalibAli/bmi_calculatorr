import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_operation_buttons.dart';
import 'package:bmi/ui/pages/bmi/widgets/bmi_physical_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BmiPhysical extends StatelessWidget {
  const BmiPhysical({
    super.key,
    required this.isWeight,
    this.weight = 0,
    this.age = 0,
    required this.onIncrementTap,
    required this.onDecrementTap,
  });

  final bool isWeight;
  final int? weight;
  final int? age;
  final Function() onIncrementTap;
  final Function() onDecrementTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            child: ColoredBox(
              color: AppColors.boxColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BmiPhysicalTexts(
                    isWeight: isWeight,
                    weight: weight!,
                    age: age!,
                  ),
                  BmiOperationButtons(
                    onIncrementTap: onIncrementTap,
                    onDecrementTap: onDecrementTap,
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
