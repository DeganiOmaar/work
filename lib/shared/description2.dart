import 'package:flutter/material.dart';

class Description2 extends StatelessWidget {
  final String text;
  const Description2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, color: Colors.black87),
    );
  }
}
