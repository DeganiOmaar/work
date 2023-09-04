// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/phone_number/verify_phone_number.dart';
import 'package:work/shared/custom_button.dart';

class AddPhoneNumber extends StatefulWidget {
  const AddPhoneNumber({super.key});

  @override
  State<AddPhoneNumber> createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Add Phone Number",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 220,
                      child: Image.asset(
                          "assets/images/tele-removebg-preview.png"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Verify Your Number",
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'myFont',
                          color: primaryColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "Please choose your Country & Enter your Phone Number ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    IntlPhoneField(
                        decoration: InputDecoration(
                            // labelText: 'Phone Number',
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        )),
                        initialCountryCode: 'TN'),
                  ],
                ),
                Spacer(),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 12,
                ),
                CustomButton(
                    buttonText: "Send",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyPhoneNumber()));
                    }),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
