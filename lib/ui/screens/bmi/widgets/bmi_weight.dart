import 'package:bmi/ui/screens/bmi/widgets/bmi_physical.dart';
import 'package:flutter/material.dart';

class BmiWeight extends StatelessWidget {
  const BmiWeight({super.key, required this.weight, required this.age, required this.onTap});

  final int weight;
  final int age;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          BmiPhysical(
            isWeight: true,
            weight: weight,
            onTap: onTap
          ),
          BmiPhysical(
            isWeight: false,
            age: age,
            onTap: onTap,
          )
        ],
      ),
    );
  }
}
