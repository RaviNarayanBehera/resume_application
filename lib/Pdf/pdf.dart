import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_application/Global.dart';
import 'package:resume_application/Pages/About_U_info.dart';
import 'package:resume_application/Pages/Personal_Info.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PdfPreview(
          build: (format) => generatePdf(),
        )
    );
  }
}

Future<Uint8List> generatePdf()
{
  final pdf = pw.Document();
  final img = pw.MemoryImage(
    fileImage!.readAsBytesSync());
  pdf.addPage(
    pw.Page( pageFormat: PdfPageFormat.a4,
      build: (context) =>pw.Column(
        children: [
          pw.Container(
            child:
            pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              mainAxisSize:pw.MainAxisSize.min,
              children: [
                pw.Text('Personal Information',style: pw.TextStyle(color : PdfColors.red)),


                pw.Text('Personal Information  :- \n\n Name     \t:  $Name \n Address  :  $Address \n Email      :  $Email \n Ph.No.    :  $Number \n Website  : $Web\n\nAbout Me   :-\n\n                     $about.\n\nEducation  :- \n\n School     \t:  $school \n Course     :  $course \n Year         :  $year \n Grade       :  $grade \n\nSkills   :- \n\n My Skills is $skill.\n\nExperience :- \n\nCompany Name   :   $comp_name\nStarting Date        :   $start_date\nEnd Date       \t\t     :   $end_date\nPost                      :   $post',),
                pw.Container(
                  height: 100,
                  width: 100,
                  // child:
                )
               ],
            ),
          )
        ]
      ),
    ),
  );
  return pdf.save();
}