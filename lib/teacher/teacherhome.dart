import 'package:flutter/material.dart';
import 'package:step/services/activities_Services/activities_firestore.dart';
import 'package:step/services/auth.dart';
import 'package:step/shared/categorycard.dart';
import 'package:step/screens/settings.dart';
import 'package:step/shared/textstyle.dart';
import 'package:step/teacher/add_activities_for_students/add_activities_by_teacher.dart';
import 'package:step/teacher/add_classes_for_students/class_dashbaord_by_teachers.dart';
import 'package:step/teacher/addstudents.dart';

class TeachersHomeScreen extends StatefulWidget {
  @override
  _TeachersHomeScreenState createState() => _TeachersHomeScreenState();
}

class _TeachersHomeScreenState extends State<TeachersHomeScreen> {
  String name = "Rishi Krishna";
  String grade = "10";
  String division = "D";
  String role = "Teacher";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040812),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    child: CircleAvatar(
                      child: Image.asset('assets/icon/avatar/Avatar.png'),
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: bigtextstyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              grade,
                              style: bigtextstyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              division,
                              style: bigtextstyle,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              role,
                              style: bigtextstyle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    color: Colors.white,
                    iconSize: 40.0,
                    //the settings button for now does log oufu
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserSettings()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                // shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: .75,
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 10.0,
                children: [
                  CategoryCard(
                    title: "Add liveClasses",
                    svgSrc: "assets/homescreen/teachers/cards/assignclasses.svg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewAddClassByTeacher()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Add Activities",
                    svgSrc: "assets/homescreen/teachers/cards/addActivities.svg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddActivitesForStudents()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "View Students",
                    svgSrc: "assets/homescreen/teachers/cards/viewStudents.svg",
                    press: () {},
                  ),
                  CategoryCard(
                    title: "New test",
                    svgSrc: "assets/homescreen/teachers/cards/newTest.svg",
                    press: () {},
                  ),
                  CategoryCard(
                    title: "Add Student",
                    svgSrc: "assets/homescreen/teachers/cards/addStudents.svg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStudentsByTeacher()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
