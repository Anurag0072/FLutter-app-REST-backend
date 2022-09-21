import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gondwana_club/screens/CommittieeMembers.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global_style/style.dart';


class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('About us'),
    backgroundColor: AppStyle.appBarColor),
        body: SafeArea(
          child:SingleChildScrollView( child:Column(

            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash.JPG'),


                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0,2.5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/icon/icon.png'),
                      radius: 70.0,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Text(
                "Gondwana Club"
                ,style: TextStyle(
                  fontSize: 30.0,
                  color:Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400
              ),
              ),


              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   "App Developer at XYZ Company"
              //   ,style: TextStyle(
              //     fontSize: 15.0,
              //     color:Colors.black45,
              //     letterSpacing: 2.0,
              //     fontWeight: FontWeight.w300
              // ),
              // ),
              ElevatedButton(
                //margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),

                //elevation: 9.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => commitiee()));
                },
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                    child: Text("Managing Committee",style: TextStyle(
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w400
                    ),)
                ),
              ),




              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: (){

                      launch('tel:+91 7122510183');


                    },
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.pink,Colors.redAccent]
                        ),
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                        alignment: Alignment.center,
                        child: Text(
                          "Contact us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400
                          ),

                        ),

                      ),

                    ),
                  ),
                  RaisedButton(
                    onPressed: (){

                      launch('https://goo.gl/maps/XDbGYB1ybH5QUfgU7');


                    },
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.pink,Colors.redAccent]
                        ),
                        borderRadius: BorderRadius.circular(80.0),

                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                        alignment: Alignment.center,
                        child: Text(
                          "Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),


              Text(
                "About us"
                ,style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(height: 5,),
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
                  child: Text("""1.Established in the year 1932 The Gondwana Club is located on top of the Seminary Hills, a commanding site overlooking the city of Nagpur. It is spread over 8 acres surrounded by forest and remains of a golf course, the club still is very much in the town. The majestic ambience free of noise and pollution the club has an envious scenic view from its main lawn, which can take more than 2000 members.\n""", style: TextStyle(
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
    child: Text("""2. Main objective of the club is to provide facilities for sports, games and healthy recreation. To encourage the activity all sports facilities are free of charge to members, Club’s Air Conditioned Billiard Room has three tables, The Addiction -Card Room, Table Tennis, Chess and other in-door game facilities and a library. The four busy Tennis Courts are floodlit. Swimming Pool with latest filtration plant and clean dressing rooms has a separate Children’s Pool with coaching options. Matches and competitions in Billiards-Snookers; Bridge are conducted regularly every year and are open for participation to all players apart from the members. The most popular is the State Level Tennis Tournaments recognized by MSLTA and AITA. International Billiards-Snooker Players, National Bridge Players have been invited by the Club and have been happy to see the facilities.\n""", style: TextStyle(
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
    child: Text("""3.The club has a lounge, TV Room, Kitchen with Dining Room and Air Conditioned Bars, state of the art pub which is the only one of its kind in Nagpur. Membership to club is very selective and restricted. A Managing Committee is elected every year for the management of the club.""", style: TextStyle(
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
    child: Text("""4. Gondwana Club has affiliations with well known Clubs in India and outside.""", style: TextStyle(
    fontSize: 18.0,
    color:Colors.black,
    letterSpacing: 2.0,
    fontWeight: FontWeight.w400)),),
                      





             ],
    ),
                ),
        ]
             )

        )
          )
    );


  }
}