import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

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
                    (FileImage == null) ? FileImage(fileImage!) : null,
              ),
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
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter Your Full Name',
                  labelText: 'Name',
                ),
                controller: txtName,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'xyz@gmail.com',
                  labelText: 'Email',
                ),
                controller: txtEmail,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter Your Permanent Address',
                  labelText: 'Address',
                ),
                controller: txtAddress,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: '9898654691',
                  labelText: 'Phone Number',
                ),
                controller: txtNumber,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.url,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Copy URL',
                  labelText: 'Website',
                ),
                controller: txtWeb,
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/p1');

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Personal Info Saved',style: TextStyle(color: Colors.black,fontSize: 18),),backgroundColor: Colors.lightBlue.shade200,duration: Duration(seconds: 3),));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                  color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text('Save',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}