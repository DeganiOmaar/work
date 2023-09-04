// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/user_screen.dart';
import 'package:work/pages/UserScreens/forget_password/reset_password.dart';
import 'package:work/pages/register.dart';
import 'package:work/shared/my_button.dart';
import 'package:work/shared/text_field.dart';
import 'package:work/shared/title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    bool isPassword = true;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TitlePages(text: "Start Using Our Application"),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
                icon: Icons.email_outlined, hintText: "Email Adress"),
            SizedBox(
              height: 40,
            ),
           
            TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 2),
                hintText: "New Passwrd",
                hintStyle: const TextStyle(color: Colors.black45, fontSize: 20),
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
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MyButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (contex) => UserScreen()));
                },
                text: 'Login'),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password ?",
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 231, 231, 231)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/images/chercher.png",
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You dont have an account yet? "),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: primaryColor),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
