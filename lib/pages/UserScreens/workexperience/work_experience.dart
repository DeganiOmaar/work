// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/workexperience/experience.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/description.dart';

class WorkExperience extends StatelessWidget {
  final VoidCallback onPressed;
  final int hasExperience;

  const WorkExperience({super.key, required this.onPressed, required this.hasExperience});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work Experience",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        hasExperience > 0 ?
        ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Experience(),
                itemCount: hasExperience) :Description(
            text:
                "Tell hiring managers about all your accompishments and responsibilities at previous jobs and internships"),
        SizedBox(
          height: 12,
        ),
        CustomButton(buttonText: "Add Experience", onPressed: onPressed),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
