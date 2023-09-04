// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work/shared/job.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, right: 12, left: 12),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 2),
                            hintText: "Search jobs",
                            hintStyle: const TextStyle(
                                color: Colors.black45, fontSize: 20),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                              child: Icon(
                                Icons.search,
                                size: 32,
                                color: Colors.black,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                // SizedBox(
                //   height: 617,
                //   child: ListView.builder(
                //     physics: const AlwaysScrollableScrollPhysics(),
                //     shrinkWrap: true,
                //     itemBuilder: (context, index) => const JobCard(),
                //     itemCount: 4,
                //   ),
                // )

                JobCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
