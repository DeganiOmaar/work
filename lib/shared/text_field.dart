import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const CustomTextField(
      {super.key, required this.icon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black45, fontSize: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          child: Icon(
            icon,
            size: 28,
            color: Colors.black,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
