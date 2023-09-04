import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const MyButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primaryColor),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ),
      ],
    );
  }
}
