import 'package:flutter/material.dart';
import 'package:gondwana_club/screens/billardScreen.dart';
import 'package:gondwana_club/screens/gym.dart';
import 'package:gondwana_club/screens/swimming.dart';
import 'package:gondwana_club/screens/tenniscort.dart';
import '../global_style/style.dart';

class sports_amenities extends StatefulWidget {
  const sports_amenities({ Key? key }) : super(key: key);

  @override
  State<sports_amenities> createState() => _sports_amenitiesState();
}

class _sports_amenitiesState extends State<sports_amenities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: SingleChildScrollView(
       child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                      MaterialPageRoute(builder: (context) => swimmingScreen()),
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
                                    image: AssetImage("assets/swimming.jpg"),
                                    fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                  ),
                                ),
                                child: Text('Swimming', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomCenter,
                              width: 200,
                              height: 300,            
                        ),
                      ),
                ),
              )
            ),
            Divider(
                      height: 10,
                      thickness: 0.8,
                      color: Colors.blueGrey.withOpacity(0.5),
                      indent: 32,
                      endIndent: 32,
                    ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 5),
              //Tennis
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tennisScreen()),
                    );
                    
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
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
                                image: AssetImage("assets/tennis.jpg"),
                                fit: BoxFit.contain,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Lawn Tennis',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomCenter,
                          width: 200,
                          height: 200,
                                              
                        ),
                      ),
                ),
              )
            ),
            Divider(
                      height: 10,
                      thickness: 0.8,
                      color: Colors.blueGrey.withOpacity(0.5),
                      indent: 32,
                      endIndent: 32,
                    ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 5),
              //Billiards
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => billardScreen()),
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
                                image: AssetImage("assets/billiards.jpg"),
                                fit: BoxFit.contain,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Billiards', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomCenter,
                          width: 200,
                          height: 300,       
                        ),
                      ),
                ),
              )
            ),
            Divider(
                      height: 10,
                      thickness: 0.8,
                      color: Colors.blueGrey.withOpacity(0.5),
                      indent: 32,
                      endIndent: 32,
                    ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 5),
              //Gym
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gymScreen()),
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
                                image: AssetImage("assets/gym1.jpg"),
                                fit: BoxFit.contain,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Gymnasium', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomCenter,
                          width: 200,
                          height: 300,       
                        ),
                      ),
                ),
              )
            )
          ],
        ),
      )   
    );
  }
}