// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/empty_text_field.dart';

class AddSkillsPage extends StatefulWidget {
  const AddSkillsPage({super.key});

  @override
  State<AddSkillsPage> createState() => _AddSkillsPageState();
}

class SkillsProfile {
  String skills;
  SkillsProfile({required this.skills});
}

List<String> tags = [];
List<String> options = [
  'Flutter',
  'JavaScript',
  'Java',
  'Dart',
  'Bootstrap',
  'React',
  'Photoshop',
  'Angular',
  'Tech',
  'Science',
];

List skillsFromProfile = [
  SkillsProfile(skills: "Flutter"),
  SkillsProfile(skills: "JavaScript"),
  SkillsProfile(skills: "Java"),
  SkillsProfile(skills: "Dart"),
  SkillsProfile(skills: "Bootstrap"),
  SkillsProfile(skills: "Photoshop"),
];

class _AddSkillsPageState extends State<AddSkillsPage> {
  late TextEditingController _skillsController;

  @override
  void initState() {
    _skillsController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _skillsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Skills",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  EmptyTextField(
                      controller: _skillsController, text: "Enter Skills"),
                  SizedBox(height: 20),
                  ChipsChoice<String>.multiple(
                    value: tags,
                    onChanged: (val) => setState(() => tags = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    wrapped: true,
                    choiceCheckmark: true,
                    choiceStyle: C2ChipStyle.filled(
                      foregroundStyle: TextStyle(fontSize: 18,color: Colors.white),
                      color: Color.fromARGB(255, 53, 100, 182),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      margin: EdgeInsets.only(right: 9, bottom: 7),
                      selectedStyle: C2ChipStyle(
                        backgroundColor: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 8,
            ),
            CustomButton(buttonText: "Add Skills ", onPressed: () {}),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
