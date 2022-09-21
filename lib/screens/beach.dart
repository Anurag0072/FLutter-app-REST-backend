import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/screens/update_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class beachScreen extends StatefulWidget {
  beachScreen({Key? key}) : super(key: key);

  @override
  _beachScreenState createState() => _beachScreenState();
}

class _beachScreenState extends State<beachScreen> {
  final sessionUserData = GetStorage();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   print('sessionUserData loginId = '+sessionUserData.read('loginId'));
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppStyle.appBarColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('The Beach Details',style: TextStyle(color: AppStyle.appBarColor)),
          backgroundColor: Colors.transparent
      ),
      body:SingleChildScrollView(
      //Container(
        child:Card(


          color: Colors.blueGrey[200],
          // color:Color(0xff895842)

          margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
          //child:

          child:
          Column(
            children: [



              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Stack(
                  children: <Widget>[

                    //CircleAvatar(
                    //radius: 90,
                    //backgroundColor: Color(0xfffffaf0),
                    //ClipOval(

                    Image(
                      image: AssetImage("assets/The-Beach.jpg"),

                    ),

                    //Icon(Icons.sports_gymnastics, size: 100, color:Color(0xff895842)),
                    //),

                    //),

                    // Positioned(
                    //   bottom: 1,
                    //   left: 1 ,
                    //   child: Container(
                    //     height: 40,
                    //     width: 40,
                    //     child: IconButton(
                    //       icon: Icon(Icons.edit,color: Color(0xfffffaf0),),
                    //       onPressed: () {
                    //         Navigator.push(context,
                    //             MaterialPageRoute(builder: (context) => UpdateDetails()));
                    //       },
                    //     ),
                    //
                    //     decoration: BoxDecoration(
                    //         color: Color(0xff895842),
                    //         borderRadius: BorderRadius.all(Radius.circular(20))
                    //
                    //     ),
                    //   ),)
                  ],
                ),
              ),
              SizedBox(height: 8),
              /*===============Member Name & ID==================*/
              Container(
                //color: Color(0x8b6c5c),
                //color: Colors.lightBlue,
                width: 400,
                padding: EdgeInsets.fromLTRB(10,10,10,0),
                margin: const EdgeInsets.all(10),

                decoration: BoxDecoration(

                    color:Colors.blueGrey[300],
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(9)
                ),
                child: Column(

                  children: [

                    SizedBox(height: 30),

                    Container(
                      //padding: EdgeInsets.fromLTRB(10, , 20, 0),

                      child: Text('Charges: 5000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                    ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      child:  Text('GST @18%: 900',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      child:  Text('Total: 5900',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    // Divider(),
                    // SizedBox(height: 20),
                    // Container(
                    //   alignment: Alignment.center,
                    //   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    //   child:  Text('Thursday Morning 6AM - 12 PM',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    // ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child:  Text('Capacity: 40',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),

                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child:  Text('Availability: All Days',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      thickness: 5,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                      child: ListTile(
                        title: Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.phone),
                              SizedBox(width: 5,),
                              Container(
                                child: Text('+91 7122510183'),
                              ),
                            ],
                          ),
                        ),
                        onTap:  () {
                          launch('tel:+91 7122510183');
                        },
                      ),
                    ),

                  ],
                ),
              ),
              //SizedBox(height: 30),
              /*===============Member Type==================*/

              //SizedBox(height: 20),

              //SizedBox(height: 10),
              // Container(
              //   width: 400,
              //   padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.black54),
              //   ),
              //   child: Column(
              //     children: [
              //       Container(
              //         padding: EdgeInsets.fromLTRB(110, 6, 110, 4),
              //         color: AppStyle.appBarColor,
              //         child: Column(
              //           children: [
              //             Container(
              //               child:  Text(sessionUserData.read('MemberTypeName'),style: TextStyle(color: Colors.white ,
              //                   fontWeight: FontWeight.bold,fontSize: 24)),
              //             ),
              //             Container(
              //               alignment: Alignment.center,
              //               padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              //               height: 30,
              //               //width: 300,
              //               child:  Text(sessionUserData.read('MemberCategory'),style: TextStyle(fontSize: 17,color: Colors.white)),
              //             ),
              //           ],
              //         ),
              //       ),
              //       //Active From : ${sessionUserData.read('ActiveFrom')}
              //
              //       // Container(
              //       //   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              //       //   child: Text('Active From : ${sessionUserData.read('ActiveFrom')}',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              //       // ),
              //     ],
              //   ),
              // ),
              //SizedBox(height: 30),
              /*===============Contact Details==================*/

              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
              //   child:  Text('Details',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              // ),
              Divider(),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
              //   child: Row(
              //     //mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         child: Icon(Icons.email),
              //       ),
              //       SizedBox(width: 10),
              //       Container(
              //         child: Text(sessionUserData.read('EmailAddress')),
              //       ),
              //
              //     ],
              //   ),
              // ),

              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
              //   child: Row(
              //     // mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         child: Icon(Icons.call),
              //       ),
              //       SizedBox(width: 10),
              //       Container(
              //         child: Text(sessionUserData.read('MobileNumber')),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

  }
}