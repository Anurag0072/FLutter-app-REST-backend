import 'package:flutter/material.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:gondwana_club/model/newaffilation.dart';
import '../rest_api/affilationDetailsApi.dart';
import 'newaffilationdata.dart';

class AffilationDetailScreen extends StatefulWidget {

  String clubnum;
  String cityname;
  String Address;
  String contactno;
  String Mail;
  String website;
  AffilationDetailScreen({required this.clubnum, required this.cityname,required this.Address, required this.contactno, required this.Mail, required this.website});

  @override
  AffilationDetailState createState() => AffilationDetailState();
}

class AffilationDetailState extends State<AffilationDetailScreen> {

  Future<AffilationNew>? futureMember;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('in Member Detail initState');
    futureMember = affilationDetailMethod(widget.clubnum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  //builder: (context) => ProductListScreen()));
                    builder: (context) => AffilationDirectoryScreen()))
          ),
          title: Text('Club Details',style: TextStyle(color: Colors.black)),
         backgroundColor: AppStyle.appBarColor
      ),
      body: Container(

        padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
        child:

        Column(
                    children: [
                      SizedBox(height: 50),
                      Container(

                        child:Row(
                          children:[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: ClipOval(
                            child:Icon(Icons.house_outlined, size: 100,color: Colors.black),
                          ),
                        ),
                            SizedBox(width: 20),
                            Flexible(child:Text(widget.clubnum,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black))),

        ]
                        )
                      ),
                      SizedBox(height: 100),

                      Container(
                          width: 400,
                          padding: EdgeInsets.fromLTRB(10,10,1,0),
                          margin: const EdgeInsets.all(10),

                          decoration: BoxDecoration(

                              color:Colors.blueGrey[300],
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(9)
                          ),

                        child: Column(

                            children: [
                              SizedBox(height: 14),

                              SizedBox(height: 7),
                              Container(
                                child: Row(
                                  children:[
                                    Icon(Icons.location_on),
                                  SizedBox(width: 10),
                                  Flexible(child:Text(widget.Address,style: TextStyle(fontSize: 20))),
                                ]
                              ),
                              ),
                              Divider(
                                thickness: 5,
                              ),
                              SizedBox(height: 7),
                          //ListTile(
                              Container(
                                child:Row(
                                  children:[
                                    Icon(Icons.contact_phone),
                                  SizedBox(width: 10),
                                  Flexible(child:Text(widget.contactno,style: TextStyle(fontSize: 20))),

                                ]

                              ),

                              ),
                              // onTap:  () {
                              //   launch(widget.contactno);
                              // },
                         // ),
                              Divider(
                                thickness: 5,
                              ),
                              SizedBox(height: 7),
                              Container(
                                child: Row(
                                  children:[
                                  Icon(Icons.email),
                                  SizedBox(width: 10),
                                  Text(widget.Mail,style: TextStyle(fontSize: 20)),
                                ]
                              ),
                              ),
                              Divider(
                                thickness: 5,
                              ),
                              SizedBox(height: 7),
                          //ListTile(
                              Container(
                                child: Row(
                                  children:[
                                    Icon(Icons.web),
                                  SizedBox(width: 10),
                                  Text(widget.website,style: TextStyle(fontSize: 20)),
                                ]
                              ),

                              ),
                            // onTap:() {
                            //   launch(widget.website);
                            //
                            // }

                              Divider(
                                thickness: 5,
                              ),
                              SizedBox(height: 7),
                              Container(
                                child: Row(
                                  children:[
                                    Icon(Icons.location_city),
                                SizedBox(width: 10),
                                Text(widget.cityname,style: TextStyle(fontSize: 20)),
                                ]
                              ),
                              ),

                              Container(

                              ),


                        ])
    )])));
              }

            }
