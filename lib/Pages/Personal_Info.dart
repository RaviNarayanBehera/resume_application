import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_application/Global.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

TextEditingController txtName = TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtNumber = TextEditingController();
TextEditingController txtWeb = TextEditingController();

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title: const Text(
          'Personal Info',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
        ),
        actions: [
          InkWell(
              onTap: () {
                TextEditingController txtName = TextEditingController();
                TextEditingController txtAddress = TextEditingController();
                TextEditingController txtEmail = TextEditingController();
                TextEditingController txtNumber = TextEditingController();
                TextEditingController txtWeb = TextEditingController();

                setState(() {
                  Name=txtName.text;
                  Address=txtAddress.text;
                  Email=txtEmail.text;
                  Number=txtNumber.text;
                  Web=txtWeb.text;

                });
              },
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/p1');
                    Name=txtName.text;
                    Address=txtAddress.text;
                    Email=txtEmail.text;
                    Number=txtNumber.text;
                    Web=txtWeb.text;
                  },
                  child: Icon(
                    Icons.check,
                    color: Colors.black,
                  ),
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.lightBlue.shade200,
                backgroundImage:
                    (fileImage != null) ? FileImage(fileImage!) : null,
              ),
              // Center(
              //   child: Container(
              //     height: 100,
              //     width: 100,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       image: (FileImage == null)
              //           ? DecorationImage(
              //           image: FileImage(fileImage!), fit: BoxFit.cover)
              //           : DecorationImage(
              //           image: AssetImage(
              //               'Assets/Images/Sample_User_Icon.png'),
              //           fit: BoxFit.cover),
              //       // : null,
              //       color: Colors.deepPurpleAccent.shade200,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async {
                      XFile? xfileImage =
                          await imagePicker.pickImage(source: ImageSource.camera);
                      setState(() {
                        fileImage = File(xfileImage!.path);
                      });
                    },
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      size: 40,
                    ),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () async {
                      XFile? xfileImage = await imagePicker.pickImage(
                          source: ImageSource.gallery);
                      setState(() {
                        fileImage = File(xfileImage!.path);
                      });
                    },
                    icon: Icon(
                      Icons.photo_rounded,
                      size: 40,
                    ),
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter Your Full Name',
                  labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.black)
                ),
                controller: txtName,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'xyz@gmail.com',
                  labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black)
                ),
                controller: txtEmail,
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter Your Permanent Address',
                  labelText: 'Address',
                  labelStyle: TextStyle(color: Colors.black)
                ),
                controller: txtAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: '9898654691',
                  labelText: 'Phone Number',
                    labelStyle: TextStyle(color: Colors.black)
                ),
                controller: txtNumber,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.url,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Copy URL',
                  labelText: 'Website',
                    labelStyle: TextStyle(color: Colors.black)
                ),
                controller: txtWeb,
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}