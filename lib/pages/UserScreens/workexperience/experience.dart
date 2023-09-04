// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Company Name",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "2022",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
            // SizedBox(
            //   width: 12,
            // ),
            Text(
              " - ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
            Text(
              "2023",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
          ],
        ),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
