import 'dart:typed_data';

import 'package:flutter/material.dart';

// class PdfScreen extends StatefulWidget {
//   const PdfScreen({super.key});
//
//   @override
//   State<PdfScreen> createState() => _PdfScreenState();
// }
//
// class _PdfScreenState extends State<PdfScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PdfPreview(
//           build: (format) => generatePdf(),
//         )
//     );
//   }
// }
//
// Future<Uint8List> generatePdf()
// {
//   final pdf = pw.Document();
//   pdf.addPage(
//     pw.Page( pageFormat: PdfPageFormat.a4,
//       build: (context) => pw.Column(
//         children: [
//
//         ],
//       ),
//     ),
//   );
//   return pdf.save();
// }