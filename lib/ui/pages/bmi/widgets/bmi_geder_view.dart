import 'package:bmi/ui/pages/bmi/widgets/bmi_gender.dart';
import 'package:flutter/material.dart';

class BmiGenderView extends StatelessWidget {

  const BmiGenderView({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Expanded(
        flex: 3,
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