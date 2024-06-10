import 'package:flutter/material.dart';

import '../Global.dart';

TextEditingController txtcomp_name = TextEditingController();
TextEditingController txtstart_date = TextEditingController();
TextEditingController txtend_date = TextEditingController();
TextEditingController txtpost = TextEditingController();

class ExpInfo extends StatefulWidget {
  const ExpInfo({super.key});

  @override
  State<ExpInfo> createState() => _ExpInfoState();
}

class _ExpInfoState extends State<ExpInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title: const Text(
          ' Experience',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
        ),
        actions: [
          InkWell(
              onTap: () {
                TextEditingController txtcomp_name = TextEditingController();
                TextEditingController txtstart_date = TextEditingController();
                TextEditingController txtend_date = TextEditingController();
                TextEditingController txtpost = TextEditingController();
                setState(() {
                  comp_name = txtcomp_name.text;
                  start_date = txtstart_date.text;
                  end_date = txtend_date.text;
                  post = txtpost.text;
                });
              },
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/p1');
                    comp_name = txtcomp_name.text;
                    start_date = txtstart_date.text;
                    end_date = txtend_date.text;
                    post = txtpost.text;
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                ExpControllerList.length,
                (index) => Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 30,
                          width: 380,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      ExpControllerList.removeAt(index - 1);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                  ))
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: txtcomp_name,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('Company Name',style: TextStyle(color: Colors.black),),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: txtstart_date,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('Joining Date',style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: txtend_date,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('End Date',style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: txtpost,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            label: const Text('Post',style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          TextEditingController txtcomp_name = TextEditingController();
          TextEditingController txtstart_date = TextEditingController();
          TextEditingController txtend_date = TextEditingController();
          TextEditingController txtpost = TextEditingController();
          setState(() {
            ExpControllerList.add(controllerModel(
                post: txtpost,
                start_date: txtstart_date,
                end_date: txtend_date,
                comp_name: txtcomp_name));
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
}

TextEditingController txtcontroller = TextEditingController();

class controllerModel {
  TextEditingController? comp_name;

  TextEditingController? job;

  TextEditingController? start_date;

  TextEditingController? end_date;

  TextEditingController? post;

  controllerModel(
      {this.comp_name, this.post, this.end_date, this.start_date,});
}

List<controllerModel> ExpControllerList = [
  controllerModel(
      comp_name: txtcomp_name,
      end_date: txtend_date,
      start_date: txtstart_date,
      post: txtpost,
      ),
];
