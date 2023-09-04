// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/description.dart';

class SkillsCard extends StatelessWidget {
  final VoidCallback onPressed;
  const SkillsCard({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Description(
            text:
                "Add Skills to your profile to highlight your proffesional knowledge and stand out to prospective employers!"),
        SizedBox(
          height: 12,
        ),
        CustomButton(buttonText: "Add Skills", onPressed: onPressed),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
