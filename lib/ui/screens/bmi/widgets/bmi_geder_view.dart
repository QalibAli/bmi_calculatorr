import 'package:bmi/ui/screens/bmi/widgets/bmi_gender.dart';
import 'package:flutter/material.dart';

class BmiGenderView extends StatelessWidget {

  const BmiGenderView({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Expanded(
              child: Row(
                children: [
                  BmiGender(
                    isMale: true,
                  ),
                  BmiGender(
                    isMale: false,
                  ),
                ],
              ),
            );
  }
}