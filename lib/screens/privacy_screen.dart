import 'package:flutter/material.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:flutter/cupertino.dart';

class PrivacyScreen extends StatefulWidget {
  @override
  PrivacyScreenState createState() => PrivacyScreenState();
}

class PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: Center(
        child: SingleChildScrollView(child:Card(
          child:
             Container(
                 width: 400,

                 margin: const EdgeInsets.all(10),

                 decoration: BoxDecoration(

                     color:Colors.blueGrey[300],
                     border: Border.all(color: Colors.black54),
                     borderRadius: BorderRadius.circular(9)
                 ),


                 child:Column(
                   children:[
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""\n This is a policy defined by GONDWANA CLUB & applicable to all Subscribers. This policy defines the Terms & Conditions for using GONDWANA CLUB Member Portal. GONDWANA CLUB reserves the right to modify the policy from time to time in accordance with changes in regulations, guidelines or directives from the government. These changes will be binding on all GONDWANA CLUB subscribers.'
                    '\n The Terms & Conditions are as follows:""", style: TextStyle(
                           fontSize: 20.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""1. You are responsible for obtaining access to the Site (including access to the Internet via an Internet Service Provider and any associated costs related thereto) and for maintaining your computer system and any other equipment required by you to access the Site. GONDWANA CLUB makes no warranties regarding the access, speed, timeliness or availability of the Internet or network services.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),

                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""2. You understand and agree that you are responsible for maintaining the confidentiality of your User ID and Password and agree not to provide them to any other person (as a precaution, GONDWANA CLUB recommends changing your login credentials periodically). You specifically agree that you are responsible for any actions entered through the Site by you or others who obtain access through you using your User ID and Password. You agree that neither GONDWANA CLUB nor BRILLECT TECH SOLUTIONS PVT. LTD. is responsible for any damages or losses resulting from any breach of security caused by your failure and/or the failure of other persons who obtain access through you to maintain the confidentiality of your User ID and Password. You agree to notify GONDWANA CLUB immediately if you suspect that your User ID and/or Password has been lost or stolen or that an unauthorized person has obtained access to the Service using your User ID and Password.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""3. GONDWANA CLUB reserves the right without notice to make any technical changes it considers necessary or desirable to the Site or where it considers that it is in GONDWANA CLUB’S or its clients interests to do so. The Site is designed to be compatible with the latest version of the most commonly used web browsers. If you are not using a common browser or the latest version of a common browser, GONDWANA CLUB does not guarantee that you will be able to continue accessing the Site after an update or technical change.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""4. GONDWANA CLUB has taken reasonable care in publishing the information contained at this Site. The information at the Site is an accurate and complete reflection of information provided by the GONDWANA CLUB Members.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""5. GONDWANA CLUB takes reasonable care to ensure that electronic communications generated by it through this Site are free of viruses or other corruption of data. Before opening or using any documents or attachments, you must check them for viruses and defects. GONDWANA CLUBs liability in this respect is limited to re-supplying any affected documents or attachments.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),
                     Divider(thickness: 5,),
                     Container(
                       decoration: BoxDecoration(

                           color:Colors.blueGrey[300],
                           border: Border.all(color: Colors.black54),
                           borderRadius: BorderRadius.circular(9)
                       ),
                       child: Text("""6. GONDWANA CLUB makes no representation or warranty concerning, or endorsement of, the content and is not responsible for the accuracy, completeness or timeliness of the content on any website to which GONDWANA CLUB provides a hypertext link, with the exception of content prepared solely by GONDWANA CLUB.""", style: TextStyle(
                           fontSize: 18.0,
                           color:Colors.black,
                           letterSpacing: 2.0,
                           fontWeight: FontWeight.w400)),),






                   ],
                 ),
               ),
   // Text(
              //       'Terms & Conditions* \n\n'
              //       '\n This is a policy defined by GONDWANA CLUB & applicable to all Subscribers. This policy defines the Terms & Conditions for using GONDWANA CLUB Member Portal. GONDWANA CLUB reserves the right to modify the policy from time to time in accordance with changes in regulations, guidelines or directives from the government. These changes will be binding on all GONDWANA CLUB subscribers.'
              //       '\n The Terms & Conditions are as follows:'
              //       '\n\n 1. You are responsible for obtaining access to the Site (including access to the Internet via an Internet Service Provider and any associated costs related thereto) and for maintaining your computer system and any other equipment required by you to access the Site. GONDWANA CLUB makes no warranties regarding the access, speed, timeliness or availability of the Internet or network services.'
              //       '\n\n 2. You understand and agree that you are responsible for maintaining the confidentiality of your User ID and Password and agree not to provide them to any other person (as a precaution, GONDWANA CLUB recommends changing your login credentials periodically). You specifically agree that you are responsible for any actions entered through the Site by you or others who obtain access through you using your User ID and Password. You agree that neither GONDWANA CLUB nor BRILLECT TECH SOLUTIONS PVT. LTD. is responsible for any damages or losses resulting from any breach of security caused by your failure and/or the failure of other persons who obtain access through you to maintain the confidentiality of your User ID and Password. You agree to notify GONDWANA CLUB immediately if you suspect that your User ID and/or Password has been lost or stolen or that an unauthorized person has obtained access to the Service using your User ID and Password.'
              //       '\n\n 3. GONDWANA CLUB reserves the right without notice to make any technical changes it considers necessary or desirable to the Site or where it considers that it is in GONDWANA CLUB’S or its clients interests to do so. The Site is designed to be compatible with the latest version of the most commonly used web browsers. If you are not using a common browser or the latest version of a common browser, GONDWANA CLUB does not guarantee that you will be able to continue accessing the Site after an update or technical change.'
              //       '\n\n 4. GONDWANA CLUB has taken reasonable care in publishing the information contained at this Site. The information at the Site is an accurate and complete reflection of information provided by the GONDWANA CLUB Members.'
              //       '\n\n 5. GONDWANA CLUB takes reasonable care to ensure that electronic communications generated by it through this Site are free of viruses or other corruption of data. Before opening or using any documents or attachments, you must check them for viruses and defects. GONDWANA CLUBs liability in this respect is limited to re-supplying any affected documents or attachments.'
              //       '\n\n 6. GONDWANA CLUB makes no representation or warranty concerning, or endorsement of, the content and is not responsible for the accuracy, completeness or timeliness of the content on any website to which GONDWANA CLUB provides a hypertext link, with the exception of content prepared solely by GONDWANA CLUB.',
              //       textAlign: TextAlign.justify,
              //     ),
              // scrollDirection: Axis.vertical, 
            ),
          )
        ),
    );


  }
}
