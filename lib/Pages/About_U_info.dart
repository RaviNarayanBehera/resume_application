import 'package:flutter/material.dart';
import 'package:resume_application/Global.dart';

TextEditingController txtabout_u = TextEditingController();

class Aboutyou extends StatefulWidget {
  const Aboutyou({super.key});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title:Text(' About You',style:TextStyle(color: Colors.black),),
        actions: [
          InkWell(onTap:() {
            TextEditingController txtabout_u = TextEditingController();

            about=txtabout_u.text;

          },child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/p1');
                about=txtabout_u.text;
          },
              child: Icon(Icons.check,color: Colors.black,),),),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ... List.generate(1, (index) =>
                  Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            cursorColor: Colors.black,
                            controller:txtabout_u,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              label: const Text('Write Something About You ',style: TextStyle(color: Colors.black),),
                              hintText: 'My Name is Ravi and i am completed my study from this "University".'
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),SizedBox(height: 500,),
            ],
          ),
        ),
      ),
    );

  }
}
