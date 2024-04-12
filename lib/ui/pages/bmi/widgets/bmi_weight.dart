import 'package:bmi/ui/pages/bmi/widgets/bmi_physical.dart';
import 'package:flutter/material.dart';

class BmiWeight extends StatelessWidget {
  const BmiWeight({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightDecrementTap,
    required this.onWeightIncrementTap,
    required this.onAgeDecrementTap,
    required this.onAgeIncrementTap,
  });

  final int weight;
  final int age;
  final Function() onWeightDecrementTap;
  final Function() onWeightIncrementTap;
  final Function() onAgeDecrementTap;
  final Function() onAgeIncrementTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          BmiPhysical(
            isWeight: true,
            weight: weight,
            onIncrementTap: onWeightIncrementTap,
            onDecrementTap: onWeightDecrementTap,
          ),
          BmiPhysical(
            isWeight: false,
            age: age,
            onIncrementTap: onAgeIncrementTap,
            onDecrementTap: onAgeDecrementTap,
          )
        ],
      ),
    );
  }
}
