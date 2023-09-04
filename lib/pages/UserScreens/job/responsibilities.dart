import 'package:flutter/material.dart';

class Responsibilities extends StatelessWidget {
    final String  varText;
  const Responsibilities({super.key, required this.varText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Stack(
        children: [
        const   Positioned(
            top: 6,
            child: Icon(
              Icons.circle,
              size: 8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
      varText,
      style: const TextStyle(fontSize: 18, color: Colors.black87, overflow: TextOverflow.fade),
    ),
          ),
        ],
      ),
    );
  }
}