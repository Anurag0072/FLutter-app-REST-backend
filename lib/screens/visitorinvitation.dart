import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:path_provider/path_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:share_plus/share_plus.dart';

class guestinvite extends StatefulWidget {
  @override
  _guestinviteState createState() => _guestinviteState();
}

class _guestinviteState extends State<guestinvite> {
  bool generated = false;
  final controller = ScreenshotController();
  var _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final visitorsController = TextEditingController();
  final timeController = TextEditingController();
  final membernoController = TextEditingController();
  var data = "";
  final sessionUserData = GetStorage();
  final dateController = TextEditingController();
 // get dateController => null;

  List<String> _visitors = ['1','2','3','4','5','6'];
  String ? _selectedvisitors;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //sessionUserData.write('loginId', value.MemberNumber),
    String MemberNumber = sessionUserData.read('loginId');
    print(MemberNumber);
    membernoController.text = MemberNumber;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Guest Invitation"),
          backgroundColor: AppStyle.appBarColor,
          centerTitle: true,
            ),


      body: Material(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(width: 20),
                
                  IconButton(
                    
                    icon: FaIcon(
                      FontAwesomeIcons.shareAlt,
                      color: generated ? Colors.black : Colors.grey,
                    ),
                    onPressed: () async {
                      if (generated) {
                        final image =
                            await controller.captureFromWidget(qrCard());
                        saveAndShare(image);
                      } else {
                        return null;
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: "Visitors QR Code",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              qrCard(),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      text: "Details",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ))),
              SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: RichText(
                            text: TextSpan(
                                text: "Name",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // TextFormField(
                      //   controller: membernoController,
                      //   validator: (value) {
                      //     if (value == null || value.isEmpty) {
                      //       return "Please Enter MemberNumber";
                      //     }
                      //   },
                      //   keyboardType: TextInputType.number,
                      //   decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: new BorderRadius.circular(20),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //             color: Colors.blue.shade200, width: 2.0),
                      //         borderRadius: new BorderRadius.circular(20),
                      //       ),
                      //       hintText: "Enter MemberNo."),
                      // ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter name";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue.shade200, width: 2.0),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            hintText: "Visitors Name"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: RichText(
                            text: TextSpan(
                                text: "Visitors",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // TextFormField(
                      //   controller: visitorsController,
                      //   validator: (value) {
                      //     if (value == null || value.isEmpty) {
                      //       return "Please Enter No: of visitors";
                      //     }
                      //   },
                      //   keyboardType: TextInputType.number,
                      //   decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: new BorderRadius.circular(20),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //             color: Colors.blue.shade200, width: 2.0),
                      //         borderRadius: new BorderRadius.circular(20),
                      //       ),
                      //       hintText: "Enter No: of visitors"),
                      // ),
                      DropdownButton(
                        hint: Text('Select no. of Visitors'),
                        value: _selectedvisitors,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedvisitors = newValue as String?;
                          });
                        },
                          items: _visitors.map((location){
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                      ),









                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: RichText(
                            text: TextSpan(
                                text: "Time",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: timeController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter the time";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue.shade200, width: 2.0),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            hintText: "Enter Time eg: (7 pm)"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: RichText(
                            text: TextSpan(
                                text: "Date",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: dateController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter the date";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue.shade200, width: 2.0),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            hintText: "Enter date eg: (dd/mm/yy)"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 200, height: 60),
                              // Generate button code
                           child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                                          setState(() {
                                            data =
                                                "MemberNumber: ${membernoController.text + "\n"} Name: ${nameController.text + "\n"} Visitors: ${_selectedvisitors! + "\n"}  Time: ${timeController.text + "\n"} Date: ${dateController.text + "\n"}";
                                            generated = true;
                                          });
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text('Processing Data')),
                                          );
                                        }
                                      },
                  style: ElevatedButton.styleFrom(
                    primary: (AppStyle.appBarColor),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  
                  child: Container(
           
                    width: 200,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Generate',
                      style:
                          const TextStyle(fontSize: 24, fontStyle: FontStyle.normal),
                    ),
                    ),
                  ),
              ),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     if (_formKey.currentState!.validate()) {
                          //       setState(() {
                          //         data =
                          //             " Name: ${nameController.text + "\n"} Visitors: ${visitorsController.text + "\n"} Time: ${timeController.text + "\n"}";
                          //         generated = true;
                          //       });
                          //       ScaffoldMessenger.of(context).showSnackBar(
                          //         SnackBar(content: Text('Processing Data')),
                          //       );
                          //     }
                          //   },
                          //   child: Text("Generate"),
                          //   style: ButtonStyle(
                          //     shape: MaterialStateProperty.all<
                          //         RoundedRectangleBorder>(
                          //       RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(50)),
                          //     ),
                          //     backgroundColor: MaterialStateProperty.all<Color>(
                          //         Color(0xff895842)),
                          //   ),
                          // ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }

  Widget qrCard() {
    return Center(
      child: Container(
        height: 350,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Conditional.single(
              context: context,
              conditionBuilder: (BuildContext context) => data != "",
              widgetBuilder: (BuildContext context) => _shareQR(),
              fallbackBuilder: (BuildContext context) => _fallback(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _shareQR() {
    return Container(
      child: Column(
        children: [
          Text('Gondwana Club Entry Code'),
          QrImage(
            data: data,
            version: QrVersions.auto,
            size: 200.0,
          ),
        ],
      ),
    );
  }

  Widget _fallback() {
    return Container(
      child: Column(
        children: [
          IconButton(
            icon: Image.asset('assets/qrcode.png'),
            iconSize: 190,
            onPressed: () {},
          ),
          Text(
            "Enter the details below to\n generate a Qr code",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black38,
            ),
          )
        ],
      ),
    );
  }

  Future saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/flutter.png');
    image.writeAsBytesSync(bytes);

    await Share.shareFiles([image.path]);
  }

  Future<String> saveImage(Uint8List image) async {
    await [Permission.storage].request();

    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '-')
        .replaceAll(':', '-');
    final name = 'Screenshot_$time';
    final result = await ImageGallerySaver.saveImage(image, name: name);
    return result['filepath'];
  }
}
