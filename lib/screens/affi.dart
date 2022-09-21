import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gondwana_club/screens/search.dart';
import '../global_style/style.dart';
import '../model/affilation.dart';
import '../rest_api/affilation_api.dart';
import '../search/searchmain.dart';
import 'ClubDetails.dart';
import 'member_detail_screen.dart';

class AffiScreen extends StatefulWidget {

  @override
  AffiState createState() => AffiState();
}

class AffiState extends State<AffiScreen> {
  late Future<List<Affilation>> futureMemberSearchParam;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
    futureMemberSearchParam = fetchAffilationMethod();
    futureMemberSearchParam.then((value) => {
      print('MemberName in initState = '+value.first.clubname),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Affiliation Club"),
            backgroundColor: AppStyle.appBarColor,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Searchpage()));
                },
              ),
            ]),

        body: Container(
          child: FutureBuilder<List<Affilation>>(
            future: futureMemberSearchParam,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => Container(
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                        // color: Color(0xff97FFFF),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            //elevation: 1,
                            //children:
                            child: Container(
                              //color: Color(0x8b6c5c),
                              //color: Colors.lightBlue,
                              // width: 400,
                              // padding: EdgeInsets.fromLTRB(10,10,10,0),
                              // margin: const EdgeInsets.all(10),

                              // decoration: BoxDecoration(
                              //
                              //     color:Colors.blueGrey[300],
                              //     border: Border.all(color: Colors.black54),
                              //     borderRadius: BorderRadius.circular(9)
                              // ),
                              child: Column(

                                children: [



                                  Container(
                                    //padding: EdgeInsets.fromLTRB(10, , 20, 0),

                                    child: Text( snapshot.data![index].clubname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23)),

                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),


                                  Container(
                                    child:  Text('Address: ${snapshot.data![index].cityname}',style: TextStyle(fontSize: 16)),
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Container(
                                    child:  Text('Telephone: ${snapshot.data![index].contactno}',style: TextStyle(fontSize: 16)),
                                  ),


                                  Container(
                                    child:  Text('Telephone: ${snapshot.data![index].Address}',style: TextStyle(fontSize: 16)),
                                  ),
                                  // Divider(),
                                  // SizedBox(height: 20),
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  //   child:  Text('Thursday Morning 6AM - 12 PM',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                  // ),
                                 Divider(
                                   thickness: 2,
                                 ),


                                  Container(

                                    //padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child:  Text(snapshot.data![index].website,style: TextStyle( fontSize: 16)),
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Container(

                                   // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child:  Text(snapshot.data![index].Mail,style: TextStyle( fontSize: 16)),
                                  ),
                                  Divider(
                                    thickness: 10,
                                  ),


                                ],
                              ),
                            ),
                            // ListTile(
                            //   leading: const Icon(Icons.home_filled),
                            //   title: Text(snapshot.data![index].ClubName),
                            //   subtitle: Text(snapshot.data![index].Telephone),
                            //   isThreeLine: true,
                            //  trailing: Text(snapshot.data![index].Address),
                            //   //trailing: Text(snapshot.data![index].Telephone),
                            //   //dense: Text(snapshot.data![index].Website),
                            //   //dense: Text(snapshot.data![index].STDCode),
                            //   //  onTap: (){
                            //   //   String clubname = snapshot.data![index].ClubName;
                            //   //    Get.off(ClubDetailsScreen(clubname: clubname));
                            //   //  },
                            // ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
    );
  }
}

