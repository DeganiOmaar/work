import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';

class Subtitle extends StatelessWidget {
  final String text;
  const Subtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: primaryColor
      ),
    );
  }
}
