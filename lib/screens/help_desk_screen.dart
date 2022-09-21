import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpDeskScreen extends StatefulWidget {
  const HelpDeskScreen({ Key? key }) : super(key: key);

  @override
  State<HelpDeskScreen> createState() => _HelpDeskScreenState();
}

class _HelpDeskScreenState extends State<HelpDeskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Help Desk"),
          backgroundColor: AppStyle.appBarColor,
          centerTitle: true,
            ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: GestureDetector(
                      onTap: () {
                        launch('tel: +91712 2511335');
                        // FlutterPhoneDirectCaller.callNumber ("+917122511335");
                      },
                      child: Card(  
                        color: AppStyle.secondBarColor,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text('Helpline: +917122511335',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                        ),
                        shadowColor: Colors.amber,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                // MAIL TO GONDWANA
                 Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: Card(
                       color: AppStyle.secondBarColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          child: Text('Mail: mail@gondwanaclub.com',textAlign: TextAlign.center,style: TextStyle(decoration:TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                          onTap: (){
                            launch('mailto: mail@gondwanaclub.com');
                          },
                          ),
                      ),
                      shadowColor: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: Card(
                       color: AppStyle.secondBarColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          child: Text("Women's Helpline: 1091",textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                          onTap: (){
                              launch('tel: 108');
                        },
                        ),
                      ),
                      shadowColor: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: Card(
                       color: AppStyle.secondBarColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          child: Text('Ambulance: 108',textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                          onTap: (){
                              launch('tel: 108');
                        },
                        ),
                      ),
                      shadowColor: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                          )
                      ),
                    ),
                  ),
                ),
                 
                 Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: Card(
                       color: AppStyle.secondBarColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(child: Text('Police: 100',textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                        onTap: (){
                          launch('tel: 100');
                        },
                        ),
                      ),
                      shadowColor: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.10,
                    width: MediaQuery.of(context).size.width *0.9,
                    child: Card(
                       color: AppStyle.secondBarColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          child: Text("Fire: 101",textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                          onTap: (){
                              launch('tel: 108');
                        },
                        ),
                      ),
                      shadowColor: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}