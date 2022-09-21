import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/model/affilation.dart';
import 'package:gondwana_club/rest_api/affilation_api.dart';

import 'package:gondwana_club/screens/update_screen.dart';
import 'package:flutter/cupertino.dart';

class ClubDetailsScreen extends StatefulWidget {
  //ClubDetailsScreen({Key? key}) : super(key: key);
  String clubname;
  ClubDetailsScreen({required this.clubname});
  @override
  _ClubScreenState createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubDetailsScreen> {
  final sessionUserData = GetStorage();
 Future <Affilation> ? _futureAffilation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('in Member Detail initState');
   //_futureAffilation = fetchAffilationMethod() ;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppStyle.appBarColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Gym Details',style: TextStyle(color: AppStyle.appBarColor)),
          backgroundColor: Colors.transparent
      ),
      body:Container(
        padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
    child:FutureBuilder<Affilation>(
    //future: _futureAffilation ,
    builder: (context, snapshot) {
    if (snapshot.hasData) {
    return Container(
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
    image: AssetImage("assets/gym1.jpg"),

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

    child: Text(snapshot.data!.clubname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

    ),
    Divider(
    thickness: 5,
    ),
    SizedBox(height: 20),
    Container(
    child: Text('Address : ${snapshot.data!.Address}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
    ),
    Divider(
    thickness: 5,
    ),
    SizedBox(height: 20),
    Container(
    child: Text('Telephone: ${snapshot.data!.contactno}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
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
    child: Text('website: ${snapshot.data!.website}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    ),
    Divider(
    thickness: 5,
    ),
    SizedBox(height: 20),
    Container(
    alignment: Alignment.center,
    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
    child: Text('website: ${snapshot.data!.Mail}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
    );
    }
    else{
      print('Something went wrong');
      return CircularProgressIndicator();
    }
    }
    )));


  }
}