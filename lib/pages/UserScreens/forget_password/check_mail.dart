// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/forget_password/newpassword2.dart';
import 'package:work/shared/description.dart';
import 'package:work/shared/my_button.dart';
import 'package:work/shared/text_field.dart';
import 'package:work/shared/title.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({super.key});

  @override
  State<CheckMail> createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/confirmation.png")),
                SizedBox(
                  height: 10,
                ),
                TitlePages(text: "Check your mail"),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Description(
                      text:
                          "Enter the 4 digits code that you received on your email"),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    icon: Icons.verified_outlined,
                    hintText: "Enter your verification code"),
                SizedBox(
                  height: 40,
                ),
                MyButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewPassword()));
                    },
                    text: "Verify"),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
