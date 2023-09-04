// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/resume/resume.dart';
import 'package:work/shared/custom_button.dart';

class ResumeProfileCard extends StatelessWidget {
  final bool haveResume;
  final VoidCallback onPressed;
  const ResumeProfileCard({super.key, required this.onPressed, required this.haveResume});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Resume",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        haveResume ?
        ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Resume(),
                itemCount: 1):
        CustomButton(buttonText: "Upload your Resume", onPressed: onPressed),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
