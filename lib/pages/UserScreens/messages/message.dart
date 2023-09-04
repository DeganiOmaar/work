// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/messages/sorry_message.dart';
import 'package:work/pages/UserScreens/messages/welcome_message.dart';
import 'package:work/shared/subtitle.dart';

class Message extends StatelessWidget {
  final bool isConfirmed;
  const Message({super.key, required this.isConfirmed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isConfirmed
          ? () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomeMessage()));
            }
          : () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SorryMessage()));
            },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(110, 235, 234, 234)),
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.person_2_outlined,
                  color: Color.fromARGB(255, 65, 70, 86),
                  size: 34,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Subtitle(text: "Company Name"),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    isConfirmed
                        ? "Welcome to Our Team! "
                        : "Outcome of Your Application",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "27 May",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  isConfirmed
                      ? Icon(
                          Icons.verified_outlined,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.clear,
                          color: Colors.redAccent,
                        )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
