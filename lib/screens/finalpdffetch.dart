import 'dart:io';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:pspdfkit/pspdfkit.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';
import '../global_style/style.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


class MyHomePagepdf extends StatefulWidget {
  const MyHomePagepdf({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePagepdf> createState() => _MyHomePagepdfState();
}

class _MyHomePagepdfState extends State<MyHomePagepdf> {
  final sessionUserData = GetStorage();
  // Track the progress of a downloaded file here.
  double progress = 0;

  // Track if the PDF was downloaded here.
  bool didDownloadPDF = false;

  // Show the progress status to the user.
  String progressString = 'File has not been downloaded yet.';
  //final sessionUserData = GetStorage();
  //var pdfurl = "https://attendance.brillect.in/gondwanatestpdf/$MemberNumber-$year-$month.pdf";
  @override
   initState()  {
    // TODO: implement initState
    super.initState();
    print('sessionUserData loginId = '+sessionUserData.read('loginId'));


  }




  TextEditingController yearController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController MNController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Form(
       // key: formGlobalKey,
        child: Container(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
    child: Column(
    children: [
    Container(
    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
    alignment: Alignment.centerLeft,
    ),

    SizedBox(height: 10),
      Padding(
        padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
        child: TextFormField(
          //obscureText: true,
          keyboardType: TextInputType.text,
          controller: MNController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'year',
            hintText: 'Enter year',
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter contact number';
            }
            return null;
          },
        ),
      ),
    Padding(
    padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
    child: TextFormField(
    //obscureText: true,
    keyboardType: TextInputType.text,
    controller: yearController,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'year',
    hintText: 'Enter year',
    ),

    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter contact number';
    }
    return null;
    },
    ),
    ),

    Padding(
    padding: EdgeInsets.fromLTRB(30, 10, 30, 4),
    child: TextFormField(
    //obscureText: true,
    keyboardType: TextInputType.text,
    controller: monthController,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Confirm month',
    hintText: 'Enter month',
    ),


    ),
    ),
    // SUBMIT BUTTON
    SizedBox(height: 10),

    ElevatedButton(
    child: Text('Submit'),

    onPressed: () async {

    String MemberNumber  = MNController.text;
    String year = yearController.text;
    String month = monthController.text;
    //PDFDocument doc = await PDFDocument.fromURL('https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf');
    print('$MemberNumber-$year-$month');
    print('$year');
    print('$month');
    var link = "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf";
    print(link);
   // print("https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf");
    //OpenFile.open("https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf");
    //PDFDocument doc = await PDFDocument.fromURL('https://attendance.brillect.in/gondwanatestpdf/$MemberNumber-$year-$month.pdf');
    //print(doc);
   //  OpenFile.open("https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/A07-2016-09.pdf");
   //  SfPdfViewer.network(
   //       "https://members.gondwanaclub.com/GondwanaPaymentPdf's/$MemberNumber-$year-$month.pdf");
   // //      "https://attendance.brillect.in/gondwanatestpdf/$MemberNumber-$year-$month.pdf");
    //_datafetch();

    },


    style: ButtonStyle(
    backgroundColor:
    MaterialStateProperty.all(AppStyle.appBarColor),
    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
    textStyle:
    MaterialStateProperty.all(TextStyle(fontSize: 20))),


    ),
    ],
    ),
    ),
        ));

  }


  //
  //


}