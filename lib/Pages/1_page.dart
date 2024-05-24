import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.menu_open,size: 27,color: Colors.black,),
        ),
        centerTitle: true,
        title: const Text('Resume Builder',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 27),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.picture_as_pdf_outlined,color: Colors.black,size: 27,),
          )
        ],
        backgroundColor: Colors.lightBlue.shade500,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(image: AssetImage('assets/images/resume.jpeg'),fit: BoxFit.fill
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text('Create your Resume with an easy steps',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23,),),
          const SizedBox(height: 20,),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('👉  Personal Info',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('👉  Education      ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('👉  Skills              ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('👉  Interests        ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('👉  About You  \t  ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('👉  Experience \t\t ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),

            ],
          ),
          Column(
            children: [
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/p1');
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlue.shade500,
                  ),
                  alignment: Alignment.center,
                  child: const Text('Tap here to make resume',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
