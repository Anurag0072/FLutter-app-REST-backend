import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get_storage/get_storage.dart';






// void main() {
//   runApp(
//       MaterialApp(
//           home: MyApp()
//       )
//   );
// }

class MyApppdf extends StatefulWidget{
  @override
  State<MyApppdf> createState() => _MyApppdfState();
}

class _MyApppdfState extends State<MyApppdf> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // TextEditingController yearController = TextEditingController();
  // TextEditingController monthController = TextEditingController();
  // TextEditingController MNController = TextEditingController();
  final MemberNumberController = TextEditingController();
  final year = TextEditingController();
  final month = TextEditingController();
  final sessionUserData = GetStorage();
  String? path;
  //String MemberNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //sessionUserData.write('loginId', value.MemberNumber),
    String MemberNumber = sessionUserData.read('loginId');
    print(MemberNumber);
    MemberNumberController.text = MemberNumber;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("ENTER DETAILS FOR BILLS"), //appbar title
            backgroundColor: Color(0xff895842) //appbar background color
        ),
        body:

       Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
      SizedBox(height: 40),
    //   Text(
    //   // decoration: InputDecoration(
    //   //   border: OutlineInputBorder(),
    //   //   labelText: 'Enter member Number',
    //   //   hintText: 'MemberNumber',
    //   // ),
    //
    // controller: MemberNumberController,
    // ),
      Text(sessionUserData.read('loginId')),

      SizedBox(height: 20),
      TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter the year',
            hintText: 'yyyy',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter year';
            }
            return null;
          },
       controller: year,
        ),
      SizedBox(height: 20),
      TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter the month',
            hintText: 'mm',
          ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter month';
          }
          return null;
        },
       controller: month,
        ),
      SizedBox(height: 30),

        ElevatedButton(
          child: const Text('Open bill'),

        onPressed: () {
          //if (_formKey.currentState!.validate()) {
            print(
                "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/${MemberNumberController
                    .text}-${year.text}-${month.text}.pdf");

            Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
                  SecondRoute(MemberNumber: MemberNumberController.text,
                      year: year.text,
                      month: month.text)),);
            // PDF().cachedFromUrl(
            //
            //   "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/${MemberNumber
            //       .text}-${year.text}-${month.text}.pdf",
            //   maxAgeCacheObject: Duration(days: 30), //duration of cache
            //   placeholder: (progress) => Center(child: Text('$progress %')),
            //   errorWidget: (error) => Center(child: Text(error.toString())),
            //
            // );


        },
    )

    ]
    ),
       ),


        );

  }
}
class SecondRoute extends StatelessWidget {
  String MemberNumber,year,month;
   SecondRoute({Key? key,required this.MemberNumber,required this.year,required this.month}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('bill'),
            backgroundColor: Color(0xff895842)
    ),
    body:
    PDF().cachedFromUrl(
      "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf",

      maxAgeCacheObject: Duration(days: 30), //duration of cache
      placeholder: (progress) => Center(child: Text('$progress %')),
      //errorWidget: (error) => Center(child: Text(error.toString())),
      errorWidget: (error) => Center(child: Text("Not bills for given Month")),

    ),




    );

  }
}