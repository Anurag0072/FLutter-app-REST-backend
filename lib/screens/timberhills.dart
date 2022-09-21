import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/screens/update_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class thScreen extends StatefulWidget {
  thScreen({Key? key}) : super(key: key);

  @override
  _thScreenState createState() => _thScreenState();
}

class _thScreenState extends State<thScreen> {
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
          title: Text('Timber Hills Details',style: TextStyle(color: AppStyle.appBarColor)),
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
                //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Stack(
                  children: <Widget>[



                    Image(
                      image: AssetImage("assets/timberhills.jpg"),

                    ),


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

                      child: Text('Charges: 7500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                    ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      child:  Text('GST @18%: 1350',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      child:  Text('Total: 8850',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    Text('Thursday Morning 6AM - 12 PM',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                    Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child:  Text('Capacity: 90',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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

            ],
          ),
        ),
      ),
    );

  }
}