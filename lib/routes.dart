import 'package:flutter/material.dart';
import 'package:resume_application/Pages/1_page.dart';
import 'package:resume_application/Pages/Detail_Page.dart';
import 'package:resume_application/Pages/Education.dart';
import 'package:resume_application/Pages/Personal_Info.dart';

class AppRoutes{
  static Map<String,Widget Function(BuildContext)> routes = {
    '/' : (context) => FirstPage(),
    '/p1' : (context) => Page2(),
    '/info' : (context) => PersonalInfo(),
    '/education' : (context) => EducationScreen(),
  };
}