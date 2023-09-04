import 'package:flutter/material.dart';
import 'package:work/shared/description2.dart';

class Skills extends StatelessWidget {
  final String varText;
  const Skills({super.key, required this.varText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Stack(
        children: [
          const Positioned(
            top: 6,
            child: Icon(
              Icons.circle,
              size: 8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Description2(text: varText),
          ),
        ],
      ),
    );
  }
}
