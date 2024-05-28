import 'package:flutter/material.dart';
import 'package:resume_application/Pages/1_page.dart';
import 'package:resume_application/Pages/About_U_info.dart';
import 'package:resume_application/Pages/Detail_Page.dart';
import 'package:resume_application/Pages/Education.dart';
import 'package:resume_application/Pages/Personal_Info.dart';
import 'package:resume_application/Pages/Skill_Info.dart';


import 'Pages/Experience_info.dart';
import 'Pdf/pdf.dart';

class AppRoutes{
  static Map<String,Widget Function(BuildContext)> routes = {
    '/' : (context) => FirstPage(),
    '/p1' : (context) => Page2(),
    '/info' : (context) => PersonalInfo(),
    '/education' : (context) => EducationScreen(),
    '/skill' : (context) => skillScreen(),
    '/experience' : (context) => ExpInfo(),
    '/about_you' : (context) => Aboutyou(),
    '/pdf' : (context) => PdfScreen(),
  };
}