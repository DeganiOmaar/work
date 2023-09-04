// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/resume/resume_page.dart';
import 'package:work/shared/custom_button.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 12,
            ),
            Flexible(
              child: Text(
                "Degani Omar - Public CV - CVDesignR.pdf",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CustomButton(
            buttonText: "Edit files",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResumePageUpload()));
            })
      ],
    );
  }
}
