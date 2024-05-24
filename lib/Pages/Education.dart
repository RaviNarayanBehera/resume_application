import 'package:flutter/material.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({super.key});

  @override
  State<EducationInfo> createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title: const Text(
          'Education Info',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 360,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTextField('School/University',controller[index].txtSchool),
              buildTextField('Start Year'),
              buildTextField('End Year'),
              buildTextField('Percentage'),

            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(String name,TextEditingController controller) => TextField(decoration: InputDecoration(focusedBorder: OutlineInputBorder(),border: OutlineInputBorder(),labelText: '$name',hintText: 'Enter Your School/University Name'),controller: controller,);
}


class ControllerModel{
  TextEditingController? txtSchool;
  TextEditingController? txtStart;
  TextEditingController? txtEnd;
  TextEditingController? txtPercentage;

  ControllerModel({this.txtSchool,this.txtStart,this.txtEnd,this.txtPercentage});
}

List<ControllerModel> controllerList = [
  ControllerModel(txtSchool: txtSchool,txtStart: txtStart,txtEnd: txtEnd,txtPercentage: txtPercentage),
];

TextEditingController txtSchool = TextEditingController();
TextEditingController txtStart = TextEditingController();
TextEditingController txtEnd = TextEditingController();
TextEditingController txtPercentage = TextEditingController();