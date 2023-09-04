// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SavedJob extends StatelessWidget {
  const SavedJob({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: [
              Text("My Jobs", style: const TextStyle(
            fontSize: 36, fontFamily: 'myFont', fontWeight: FontWeight.bold),),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Saved Jobs"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
