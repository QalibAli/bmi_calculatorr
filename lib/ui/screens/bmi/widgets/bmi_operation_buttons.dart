import 'package:bmi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BmiOperationButtons extends StatelessWidget {
  const BmiOperationButtons({super.key, required this.onTap});
  final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: SizedBox(
                  height: 60,
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Icon(Icons.remove),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
           Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: SizedBox(
                  height: 60,
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Icon(Icons.add),
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
