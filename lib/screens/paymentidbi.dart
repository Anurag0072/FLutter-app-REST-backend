import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get_storage/get_storage.dart';



class IDBIpay extends StatefulWidget{
  @override
  State<IDBIpay> createState() => _IDBIpayState();
}

class _IDBIpayState extends State<IDBIpay> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final MemberNumberController = TextEditingController();
  final MemberNameController = TextEditingController();
  final amount= TextEditingController();
  final sessionUserData = GetStorage();
  String? path;
  //String MemberNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //sessionUserData.write('loginId', value.MemberNumber),
    String MemberNumber = sessionUserData.read('loginId');
    String MemberName = sessionUserData.read('MemberName');
    print(MemberNumber);
    print(MemberName);
    MemberNumberController.text = MemberNumber;
    MemberNameController.text = MemberName;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("ENTER DETAILS FOR Payment"), //appbar title
          backgroundColor: Color(0xff895842) //appbar background color
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
              SizedBox(height: 40),

              Text(sessionUserData.read('loginId')),

              SizedBox(height: 20),

              Text(sessionUserData.read('MemberName')),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter the amount',
                  hintText: 'mm',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter amount';
                  }
                  return null;
                },
                controller: amount,
              ),
              SizedBox(height: 30),

              ElevatedButton(
                child: const Text('Pay'),

                onPressed: () {


                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        SecondRoute(MemberNumber: MemberNumberController.text,
                            MemberName: MemberNameController.text,
                            amount: amount.text)),);



                },
              )

            ]
        ),
      ),


    );

  }
}
class SecondRoute extends StatelessWidget {
  String MemberNumber,MemberName,amount;
  SecondRoute({Key? key,required this.MemberNumber,required this.MemberName,required this.amount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('bill'),
          backgroundColor: Color(0xff895842)
      ),
      body:
      // PDF().cachedFromUrl(
      //   "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf",
      //
      //   maxAgeCacheObject: Duration(days: 30), //duration of cache
      //   placeholder: (progress) => Center(child: Text('$progress %')),
      //   //errorWidget: (error) => Center(child: Text(error.toString())),
      //   errorWidget: (error) => Center(child: Text("Not bills for given Month")),
      //
      // ),
      Text("pass"),




    );

  }
}