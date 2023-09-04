// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/phone_number/add_phone_number.dart';
import 'package:work/pages/UserScreens/resume/resume_card.dart';
import 'package:work/pages/UserScreens/resume/resume_page.dart';
import 'package:work/pages/UserScreens/skills/add_skills.dart';
import 'package:work/pages/UserScreens/skills/skills_card.dart';
import 'package:work/pages/UserScreens/workexperience/add_experience.dart';
import 'package:work/pages/UserScreens/workexperience/work_experience.dart';
import 'package:work/pages/UserScreens/websites/add_websites.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/description.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: "myFont"),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Degani Omar",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Contact information",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Color.fromARGB(255, 121, 121, 121),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Description(text: "Username@gmail.com")
                ],
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                  buttonText: "Add Phone Number",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPhoneNumber()));
                  }),
              SizedBox(
                height: 40,
              ),
              WorkExperience(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddExperiencePage()));
                },
                hasExperience: 1,
              ),
              ResumeProfileCard(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResumePageUpload()));
                },
                haveResume: true,
              ),
              SkillsCard(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddSkillsPage()));
              }),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Webistes",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddWebsites()));
                          },
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Not answered",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.github,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Not answered",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Not answered",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 2.0, right: 2, top: 5, bottom: 4),
                            child: FaIcon(
                              FontAwesomeIcons.link,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Not answered",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
