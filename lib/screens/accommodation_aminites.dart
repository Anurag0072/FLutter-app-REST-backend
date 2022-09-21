import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global_style/style.dart';

class accomodation_aminites extends StatefulWidget {
  const accomodation_aminites({ Key? key }) : super(key: key);

  @override
  State<accomodation_aminites> createState() => _accomodation_aminitesState();
}

class _accomodation_aminitesState extends State<accomodation_aminites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accomodations'),
        backgroundColor: AppStyle.appBarColor,  
      ),
      body: SingleChildScrollView(  
        padding: EdgeInsets.all(10),
        // child: Container(
        //   height: MediaQuery.of(context).size.height*0.70,
        //   width: MediaQuery.of(context).size.width*0.99,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Card( 
              shadowColor: Colors.amber,
              elevation: 5,
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // if you need this
                            side: BorderSide(
                              color: Colors.grey.withOpacity(0.2),  
                              width: 1,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.99,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage("assets/hotel-adi-nagpur.jpg"),
                              fit: BoxFit.fill,
                            alignment: Alignment.center,
                  ),
               )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ListTile(title: Container(                
                        child: Row(
                    children: <Widget>[
                      Icon(Icons.water_damage_outlined, size: 28),
                      SizedBox(width:5),
                      Container(
                        child: Text('www.hoteladi.com'),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  launch('https:www.hoteladi.com');
                },
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                    child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mail_outline),
                            SizedBox(width: 5,),
                            Container(
                              child: Text('hoteladi@gmail.com'),
                            ),
                          ],
                        ),
                      ),
                      onTap:  () {
                  launch('mailto:hoteladi@gmail.com');
                },
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                    child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.phone),
                            SizedBox(width: 5,),
                            Container(
                              child: Text('+91 9326070164'),
                            ),
                          ],
                        ),
                      ),
                      onTap:  () {
                  launch('tel:9326070164');
                },
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                    child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.phone),
                            SizedBox(width: 5,),
                            Container(
                              child: Text('+91 9326070168'),
                            ),
                          ],
                        ),
                      ),
                      onTap:  () {
                  launch('tel:9326070168');
                },
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                    child: ListTile(
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 5,),
                            Container(
                              child: Text('5, Karve Nagar, Wardha Road,' '\n Near Airport, Nagpur-25'),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
              SizedBox(
                height: 20,
              ),

            Divider(
              height: 2,
              thickness: 5,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
              SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.amber,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Container(
                    width: MediaQuery.of(context).size.width*0.99,
                    height: MediaQuery.of(context).size.height*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/hotellb.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: ListTile(title: Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.water_damage_outlined, size: 28),
                      SizedBox(width:5),
                      Container(
                        child: Text('www.hotellbnagpur.com'),
                      ),
                    ],
                  ),
                ),
                  onTap: () {
                    launch('https:www.hotellbnagpur.com');
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.mail_outline),
                        SizedBox(width: 5,),
                        Container(
                          child: Text('hotellb@yahoo.com'),
                        ),
                      ],
                    ),
                  ),
                  onTap:  () {
                    launch('mailto:hotellb@yahoo.com');
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(width: 5,),
                        Container(
                          child: Text('+91 8888769888'),
                        ),
                      ],
                    ),
                  ),
                  onTap:  () {
                    launch('tel:8888769888');
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone),
                        SizedBox(width: 5,),
                        Container(
                          child: Text('+91 7276283335'),
                        ),
                      ],
                    ),
                  ),
                  onTap:  () {
                    launch('tel:7276283335');
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.location_on_outlined),
                        SizedBox(width: 5,),
                        Container(
                          child: Text('2A,Mount Road Extension,' '\n Sadar, Nagpur-440001'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



           ],

        ),

        ),

    //)
    );
  }
}