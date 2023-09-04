import 'package:flutter/material.dart';

class TitlePages extends StatelessWidget {
  final String text;
  const TitlePages({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 26, fontFamily: 'myFont', fontWeight: FontWeight.bold),
    );
  }
}
