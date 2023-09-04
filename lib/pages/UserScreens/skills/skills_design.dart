import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';

class SkillsDesign extends StatelessWidget {
  final String varText;
  const SkillsDesign({super.key, required this.varText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            varText,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
