// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/login.dart';
import 'package:work/shared/my_button.dart';
import 'package:work/shared/text_field.dart';
import 'package:work/shared/title.dart';

class RegisterPage extends StatefulWidget {
  // final FaIcon icon;
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitlePages(text: "Welcome To Our Application,"),
              SizedBox(
                height: 35,
              ),
              CustomTextField(
                  icon: Icons.person_2_outlined, hintText: 'Username'),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CustomTextField(
                        icon: Icons.person_2_outlined, hintText: 'First Name'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: CustomTextField(
                        icon: Icons.person_2_outlined, hintText: 'Last Name'),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              CustomTextField(
                  icon: Icons.email_outlined, hintText: "Email Adress"),
              SizedBox(
                height: 35,
              ),
              TextField(
                obscureText: isPassword,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 2),
                  hintText: "New Passwrd",
                  hintStyle:
                      const TextStyle(color: Colors.black45, fontSize: 20),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                    child: Icon(
                      Icons.lock_outline,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    child: Text(
                      isPassword ? 'Show' : 'Hide',
                      style:
                          const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              MyButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  text: "Continue"),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Already A member ?",
                      style: TextStyle(fontSize: 17, color: Colors.black54),
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 17, color: primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
