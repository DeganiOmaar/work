// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/messages/message.dart';


class UserMessages extends StatefulWidget {
  const UserMessages({super.key});

  @override
  State<UserMessages> createState() => _UserMessagesState();
}

class _UserMessagesState extends State<UserMessages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(110, 235, 234, 234),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Your Messages",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Message(isConfirmed: true),
                Message(isConfirmed: false),
                Message(isConfirmed: true),
                Message(isConfirmed: true),
                Message(isConfirmed: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
