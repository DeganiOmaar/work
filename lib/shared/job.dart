import 'package:flutter/material.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/job/jobdetails.dart';
import 'package:work/shared/button_apply.dart';
class JobCard extends StatefulWidget {
  const JobCard({super.key});

  @override
  State<JobCard> createState() => _JobCardState();
}

class Jobs {
  String title;
  String name;
  String location;
  String date;

  Jobs(
      {required this.title,
      required this.name,
      required this.location,
      required this.date});
}

List alljobs = [
  Jobs(
      title: "Android Developper",
      name: "First Company",
      location: "Tunis",
      date: 'Posted 14 days ago'),
  Jobs(
      title: "IOS Developper",
      name: "Second Company",
      location: "Sousse",
      date: 'Posted 10 days ago'),
  Jobs(
      title: "Front-end Devlopper",
      name: "Third Company",
      location: "Monastir",
      date: 'Posted 2 days ago'),
  Jobs(
      title: "Back-end Developper",
      name: "Fourth Company",
      location: "Bizerte",
      date: 'Posted 1 month ago'),
];

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 617,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: alljobs.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                alljobs[index].title,
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontFamily: 'myFont',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(alljobs[index].name,
                  style: const TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 65, 70, 86))),
              const SizedBox(
                height: 4,
              ),
              Text(alljobs[index].location,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 65, 70, 86),
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        "assets/images/money.png",
                        width: 24,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Estimated \$60K - \$90k a year",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 177, 87, 106))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    alljobs[index].date,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JobDetails(
                                    work: alljobs[index],
                                  )));
                    },
                    child: Row(
                      children: [
                        Text(
                          "More",
                          style: TextStyle(color: Colors.green.shade400),
                        ),
                        // SizedBox(width: 4,),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.green.shade400,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ApplyButton(onPressed: () {}),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
