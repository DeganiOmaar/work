// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/job/responsibilities.dart';
import 'package:work/pages/UserScreens/job/skills.dart';
import 'package:work/shared/description2.dart';
import 'package:work/shared/job.dart';
import 'package:work/shared/subtitle.dart';

class JobDetails extends StatefulWidget {
  Jobs work;

  JobDetails({super.key, required this.work});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class ResponsisibilitiesClass {
  String text;

  ResponsisibilitiesClass({required this.text});
}

List allResponsibilities = [
  ResponsisibilitiesClass(
      text: "develop Android application interface, working closely "),
  ResponsisibilitiesClass(
      text:
          "with interface designers - contribute ideas, describe platform limitations"),
  ResponsisibilitiesClass(
      text: "develop Android application interface, working closely "),
  ResponsisibilitiesClass(
      text:
          "with interface designers - contribute ideas, describe platform limitations"),
];

class SkillSClass {
  String skills;

  SkillSClass({required this.skills});
}

List allSkills = [
  SkillSClass(skills: "At least 3 years of software development experience"),
  SkillSClass(
      skills:
          "Proven record of development for Android OS espacially experience with with JNI, Native , C/C++ developement")
];

class _JobDetailsState extends State<JobDetails> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Job Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    widget.work.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'myFont',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text( widget.work.name,
      style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 52, 54, 62))),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text(
                          "0 applicant",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                          // color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.work_history_outlined,
                              size: 20,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Job Type : ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 177, 87, 106))),
                            Text("Full - Time",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 177, 87, 106)))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          widget.work.date,
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Subtitle(text: "About the Job"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 12, 0, 0),
                    child: Description2(
                        text:
                            "do you want to work on cutting-edge projects with the world's best developeprs? Do you wish you could control your projects to work and choose your own pay rate?"),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Subtitle(text: "Responsibilities"),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: allResponsibilities.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Responsibilities(
                          varText: allResponsibilities[index].text,
                        );
                      }),
                  SizedBox(
                    height: 32,
                  ),
                  Subtitle(text: "Skills"),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: allSkills.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Skills(
                          varText: allSkills[index].skills,
                        );
                      }),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1.6),
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.sizeOf(context).width * 0.70,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "Apply Now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        // fontFamily: 'myFont',
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Positioned(
            right: 24,
            bottom: 10,
            child: Container(
                width: MediaQuery.sizeOf(context).width * 0.15,
                height: 55,
                decoration: BoxDecoration(
                  color: isSaved ? primaryColor : Colors.white,
                  border: Border.all(color: primaryColor, width: 1.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSaved = !isSaved;
                      });
                    },
                    child: isSaved
                        ? Icon(
                            Icons.bookmark_added_outlined,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.bookmark_add_outlined,
                            color: primaryColor,
                          ))),
          )
        ],
      ),
    );
  }
}
