// import 'package:flutter/material.dart';
//
// class EducationInfo extends StatefulWidget {
//   const EducationInfo({super.key});
//
//   @override
//   State<EducationInfo> createState() => _EducationInfoState();
// }
//
// class _EducationInfoState extends State<EducationInfo> {
//   get controller => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlue.shade500,
//         centerTitle: true,
//         title: const Text(
//           'Education Info',
//           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Container(
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           height: 360,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               buildTextField('School/University',controller[index].txtSchool),
//               buildTextField('Start Year'),
//               buildTextField('End Year'),
//               buildTextField('Percentage'),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   TextField buildTextField(String name,TextEditingController controller) => TextField(decoration: InputDecoration(focusedBorder: OutlineInputBorder(),border: OutlineInputBorder(),labelText: '$name',hintText: 'Enter Your School/University Name'),controller: Controller,);
// }
//
//
// class ControllerModel{
//   TextEditingController? txtSchool;
//   TextEditingController? txtStart;
//   TextEditingController? txtEnd;
//   TextEditingController? txtPercentage;
//
//   ControllerModel({this.txtSchool,this.txtStart,this.txtEnd,this.txtPercentage});
// }
//
// List<ControllerModel> controllerList = [
//   ControllerModel(txtSchool: txtSchool,txtStart: txtStart,txtEnd: txtEnd,txtPercentage: txtPercentage),
// ];
//
// TextEditingController txtSchool = TextEditingController();
// TextEditingController txtStart = TextEditingController();
// TextEditingController txtEnd = TextEditingController();
// TextEditingController txtPercentage = TextEditingController();


import 'package:flutter/material.dart';

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
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop('/det');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        centerTitle: true,
        title: const Text(
          'Personal Info',
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

                  Navigator.of(context).pushNamed('/pdf');

                  Navigator.of(context).pushNamed('/prview');
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.check,
                  color: Colors.black,
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
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.delete,
                                ),
                              )),
                          educationbox(
                              'School/University', ControllerList[index].school!),
                          SizedBox(
                            height: 5,
                          ),
                          educationbox('Course', ControllerList[index].course!),
                          SizedBox(
                            height: 5,
                          ),
                          educationbox('Grade', ControllerList[index].grade!),
                          SizedBox(height: 5,),
                          educationbox('Year', ControllerList[index].year!),
                        ],

                      )),

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
          child: Row(
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
      controller: Controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(label),
      ),
    );
  }
}

String? course = '';
String? school = '';
String? grade = '';
String? year = '';
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