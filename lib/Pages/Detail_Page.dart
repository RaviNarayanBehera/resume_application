import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Resume Builder',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 27),),
        backgroundColor: Colors.lightBlue.shade500,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/pdf');
                },
                child: const Icon(Icons.picture_as_pdf_outlined,color: Colors.black,size: 27,)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/info');
              },
                child: menu_list(name: 'Personal Info',iconname: Icons.person_outline_rounded)),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/education');
              },
                child: menu_list(name: 'Education',iconname: Icons.school_outlined)),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/skill');
              },
                child: menu_list(name: 'Skills',iconname: Icons.workspace_premium_outlined)),
            SizedBox(height: 10,),
            // menu_list(name: 'Interests',iconname: Icons.interests_outlined),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/experience');
                },child: menu_list(name: 'Experience',iconname: Icons.work)),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/about_you');
              },child: menu_list(name: 'About You',iconname: Icons.person_pin_outlined)),
          ],
        ),
      ),
    );
  }

  Container menu_list({required String name,required iconname}) {
    return Container(
            margin: const EdgeInsets.all(5),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('  $name ',style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18,letterSpacing: 1),),
                  const Spacer(),
                  Icon(iconname),
                ],
              ),
            ),
          );
  }
}
