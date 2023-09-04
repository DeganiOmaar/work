// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/empty_text_field.dart';

class AddWebsites extends StatefulWidget {
  const AddWebsites({super.key});

  @override
  State<AddWebsites> createState() => _AddWebsitesState();
}

class _AddWebsitesState extends State<AddWebsites> {
  late TextEditingController _linkedinController;
  late TextEditingController _githubController;
  late TextEditingController _facebookController;
  late TextEditingController _websiteController;
  @override
  void initState() {
    _linkedinController = TextEditingController();
    _githubController = TextEditingController();
    _facebookController = TextEditingController();
    _websiteController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _linkedinController.dispose();
    _githubController.dispose();
    _facebookController.dispose();
    _websiteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Websites", 
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                EmptyTextField(
                    controller: _linkedinController,
                    text: "Linkedin profile URL"),
                SizedBox(
                  height: 12,
                ),
                EmptyTextField(
                    controller: _githubController, text: "Github profile URL"),
                SizedBox(
                  height: 12,
                ),
                EmptyTextField(
                    controller: _facebookController,
                    text: "Facebook profile URL"),
                SizedBox(
                  height: 12,
                ),
                EmptyTextField(
                    controller: _websiteController, text: "Website URL"),
              ],
            ),
            Spacer(),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 8,
            ),
            CustomButton(buttonText: "Save", onPressed: () {}),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
