import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gondwana_club/model/affilation.dart';
import 'package:gondwana_club/rest_api/newaffilation_api.dart';
import 'package:gondwana_club/screens/home_screen.dart';
import 'package:gondwana_club/screens/search.dart';
import 'package:gondwana_club/search/searchmain.dart';
import '../global_style/style.dart';
import '../model/member.dart';
import '../model/newaffilation.dart';
import '../rest_api/member_list_api.dart';
import 'Affilationdetail.dart';
import 'member_detail_screen.dart';

class AffilationDirectoryScreen extends StatefulWidget {

  @override
  AffilationDirectoryState createState() => AffilationDirectoryState();
}

class AffilationDirectoryState extends State<AffilationDirectoryScreen> {
  late Future<List<AffilationNew>> futureMemberSearchParam;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
    futureMemberSearchParam = AffilationNewMethod();
    futureMemberSearchParam.then((value) => {
      print('cityname in initState = '+value.first.cityname),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            title: Text("Affiliated Clubs"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.push(context,
             MaterialPageRoute(builder: (_) => HomeScreen())),
            ),
            backgroundColor: AppStyle.appBarColor,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Searchpage()));
                },
              ),
              // IconButton(
              //   alignment: Alignment.topLeft,
              //   icon: Icon(Icons.arrow_left),
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (_) => HomeScreen()));
              //   },
              // ),


            ]),

        body: Container(
          child: FutureBuilder<List<AffilationNew>>(
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
                            elevation: 1,
                            child:
                            ListTile(
                              leading: const Icon(Icons.person),
                              title: Text(snapshot.data![index].cityname),
                              subtitle: Text(snapshot.data![index].clubname),
                              //trailing: Text(snapshot.data![index].City),
                              onTap: (){
                                String clubnum = snapshot.data![index].clubname;
                                String cityname = snapshot.data![index].cityname;
                                String Address = snapshot.data![index].Address;
                                String contactno = snapshot.data![index].contactno;
                                String Mail = snapshot.data![index].Mail;
                                String website = snapshot.data![index].website;
                                Get.off(AffilationDetailScreen(clubnum: clubnum, cityname: cityname, Address: Address, contactno: contactno, Mail: Mail, website: website ));
                              },
                            ),
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

