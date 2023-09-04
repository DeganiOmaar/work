// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/description2.dart';

class ResumePageUpload extends StatefulWidget {
  const ResumePageUpload({super.key});

  @override
  State<ResumePageUpload> createState() => _ResumePageUploadState();
}

class _ResumePageUploadState extends State<ResumePageUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Resume Option",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Uploading your resume is easy!",
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'myFont',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Description2(text: "Upload a file (PDF,Word, Text)"),
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/images/resume.jpg"),
              ],
            ),
            Spacer(),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 8,
            ),
            CustomButton(
                buttonText: "Upload File",
                onPressed: () {
                
                }),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
