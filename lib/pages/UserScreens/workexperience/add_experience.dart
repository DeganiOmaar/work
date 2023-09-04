// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:work/shared/custom_button.dart';
import 'package:work/shared/empty_text_field.dart';

class AddExperiencePage extends StatefulWidget {
  const AddExperiencePage({super.key});

  @override
  State<AddExperiencePage> createState() => _AddExperiencePageState();
}

class _AddExperiencePageState extends State<AddExperiencePage> {
  late TextEditingController _titleController;
  late TextEditingController _companyController;
  late TextEditingController _startDateController;
  late TextEditingController _endDaterController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    _titleController = TextEditingController();
    _companyController = TextEditingController();
    _startDateController = TextEditingController();
    _endDaterController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _companyController.dispose();
    _startDateController.dispose();
    _endDaterController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  bool isPicking = false;
  bool isPicking2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Work Experience",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  EmptyTextField(controller: _titleController, text: "Title"),
                  SizedBox(
                    height: 16,
                  ),
                  EmptyTextField(
                      controller: _companyController, text: "Company"),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start date",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () async {
                              DateTime? newStartDate = await showDatePicker(
                                  context: context,
                                  initialDate: startDate,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100));
                              if (newStartDate == null) return;

                              setState(() {
                                isPicking = true;
                                startDate = newStartDate;
                              });
                            },
                            child: Container(
                              height: 48,
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.6),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: isPicking
                                      ? Text(
                                          "${startDate.day}/${startDate.month}/${startDate.year}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      : Text("")),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "End date",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () async {
                              DateTime? newEndtDate = await showDatePicker(
                                  context: context,
                                  initialDate: endDate,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100));
                              if (newEndtDate == null) return;

                              setState(() {
                                isPicking2 = true;
                                endDate = newEndtDate;
                              });
                            },
                            child: Container(
                              height: 48,
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.6),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: isPicking2
                                      ? Text(
                                          "${endDate.day}/${endDate.month}/${endDate.year}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      : Text("")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Description",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, width: 0.6, // Border width
                      ),
                      borderRadius: BorderRadius.circular(15), // Border radius
                    ),
                    height: 150,
                    child: TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CustomButton(buttonText: "Save", onPressed: () {}),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
