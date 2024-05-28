import 'package:flutter/material.dart';

import '../Global.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title: const Text(
          'Education',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
        ),
        actions: [
          InkWell(
              onTap: () {
                TextEditingController txtcourse = TextEditingController();
                TextEditingController txtschool = TextEditingController();
                TextEditingController txtgrade = TextEditingController();
                TextEditingController txtyear = TextEditingController();
                setState(() {
                  year = txtyear.text;
                  course = txtcourse.text;
                  grade = txtgrade.text;
                  school = txtschool.text;

                });
              },
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/p1');
                    school=txtschool.text;
                    year=txtyear.text;
                    course=txtcourse.text;
                    grade=txtgrade.text;
                  },
                  child: const Icon(
                    Icons.check,
                    color: Colors.black,
                  ),
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                ...List.generate(
                  ControllerList.length,
                      (index) => Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(8),
                      height: 360,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  ControllerList.removeAt(index-1);
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.delete,
                                ),
                              )),
                          educationbox(
                              'School/University', ControllerList[index].school!),
                          const SizedBox(
                            height: 5,
                          ),
                          educationbox('Course', ControllerList[index].course!),
                          const SizedBox(
                            height: 5,
                          ),
                          educationbox('Grade', ControllerList[index].grade!),
                          const SizedBox(height: 5,),
                          educationbox('Year', ControllerList[index].year!),
                        ],
                      ),),
                )
              ]
          )
      ),
      floatingActionButton: InkWell(
        onTap: () {
          TextEditingController txtcourse = TextEditingController();
          TextEditingController txtschool = TextEditingController();
          TextEditingController txtgrade = TextEditingController();
          TextEditingController txtyear = TextEditingController();
          setState(() {
            ControllerList.add(controllerModal(
                course: txtcourse,
                school: txtschool,
                year: txtyear,
                grade: txtgrade));
          });
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade500,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField educationbox(String label, TextEditingController Controller) {
    return TextField(
      cursorColor: Colors.black,
      controller: Controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(label),
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}

TextEditingController txtcontroller = TextEditingController();

class controllerModal {
  TextEditingController? school;
  TextEditingController? course;
  TextEditingController? year;
  TextEditingController? grade;

  controllerModal({this.school, this.course, this.year, this.grade});
}

List<controllerModal> ControllerList = [
  controllerModal(
      course: txtcourse, school: txtschool, grade: txtgrade, year: txtyear)
];
TextEditingController txtcourse = TextEditingController();
TextEditingController txtschool = TextEditingController();
TextEditingController txtgrade = TextEditingController();
TextEditingController txtyear = TextEditingController();