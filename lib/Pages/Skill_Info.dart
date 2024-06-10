import 'package:flutter/material.dart';
import '../Global.dart';

TextEditingController txtskill = TextEditingController();

class skillScreen extends StatefulWidget {
  const skillScreen({super.key});

  @override
  State<skillScreen> createState() => _skillScreenState();
}

class _skillScreenState extends State<skillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
        centerTitle: true,
        title:const Text(' Skills',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),),
        actions: [
          InkWell(
            onTap: () {
              TextEditingController txtskill = TextEditingController();
              setState(() {
                skill=txtskill.text;
              });
            },
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/p1');
                  skill=txtskill.text;
                },
                child: const Icon(
                  Icons.check,
                  color: Colors.black,
                ),
              ),
            ),),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ... List.generate(skControllerList.length, (index) =>
                  Container(
                    // height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            maxLines: 2,
                            cursorColor: Colors.black,
                            controller: skControllerList[index].skill!,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              label: const Text('Skills'),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 25),
                              hintText: 'Input Your Skills',
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 30,
                            width: 380,
                            child:    Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(onTap: () {
                                  setState(() {
                                    skControllerList.removeAt(index-1);
                                  });
                                },
                                    child: const Icon(Icons.delete,color: Colors.black,))
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
              ),SizedBox(height: 5,),
            ],
          ),
        ),

      ),
      floatingActionButton: InkWell(
        onTap: () {
          TextEditingController txtskill =
          TextEditingController();
          setState(() {
            skControllerList.add(controllerModal(skill: txtskill));
          });
        },
        child: Container(
          height:40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade500,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add,color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}

class controllerModal {
  TextEditingController? skill;
  controllerModal({this.skill});
}

List<controllerModal> skControllerList = [
  controllerModal(
      skill: txtskill)
];
