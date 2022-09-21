import 'package:flutter/material.dart';
import 'package:gondwana_club/screens/liberary.dart';

import '../global_style/style.dart';

class leisure_aminities extends StatefulWidget {
  const leisure_aminities({ Key? key }) : super(key: key);

  @override
  State<leisure_aminities> createState() => _leisure_aminitiesState();
}

class _leisure_aminitiesState extends State<leisure_aminities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leisure'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(25, 5, 15, 5),
            //   // Swimming
            //   child: Container(
            //     height: 200,
            //     width: 300,
            //     child: GestureDetector(
            //       onTap: () {
            //
            //       },
            //       child: Card(
            //             shadowColor: Colors.amber,
            //             elevation: 2,
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(0), // if you need this
            //                   side: BorderSide(
            //                     color: Colors.grey.withOpacity(0.2),
            //                     width: 1,
            //                   ),
            //                 ),
            //                 child: Container(
            //                   decoration: BoxDecoration(
            //                     image: DecorationImage(
            //                         image: AssetImage("assets/spa_gc.jpg"),
            //                         fit: BoxFit.fill,
            //                       alignment: Alignment.center,
            //                       ),
            //                     ),
            //                     child: Text('Spa', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
            //                   width: 200,
            //                   height: 300,
            //             ),
            //           ),
            //     ),
            //   )
            // ),
            // Divider(
            //           height: 10,
            //           thickness: 0.8,
            //           color: Colors.blueGrey.withOpacity(0.5),
            //           indent: 32,
            //           endIndent: 32,
            //         ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 15, 5),
              // Swimming
              child: Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => libraryScreen()),
                    );

                  },
                  child: Card(
                        shadowColor: Colors.amber,
                        elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0), // if you need this
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2), 
                                width: 1,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/libraries.jpg"),
                                    fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                  ),
                                ),
                                child: Text('Library', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
                              width: 200,
                              height: 300,            
                        ),
                      ),
                ),
              )
            ),
          ]
        ),
      ),  
    );
  }
}