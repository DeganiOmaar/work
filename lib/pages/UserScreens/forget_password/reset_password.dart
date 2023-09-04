// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/pages/UserScreens/forget_password/check_mail.dart';
import 'package:work/shared/description.dart';
import 'package:work/shared/my_button.dart';
import 'package:work/shared/text_field.dart';
import 'package:work/shared/title.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Back",
            style: TextStyle(color: Colors.black),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitlePages(text: "Forgot Password"),
              SizedBox(
                height: 8,
              ),
              Description(
                  text: "Enter your email for the verification proccess."),
              SizedBox(
                height: 6,
              ),
              Description(text: "Wel will send 4 digits code to your emai"),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                  icon: Icons.email_outlined, hintText: "Type your email"),
              SizedBox(
                height: 40,
              ),
              MyButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => CheckMail()));
                  },
                  text: "Send Verification Code"),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
