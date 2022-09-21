import 'package:flutter/material.dart';
import 'package:gondwana_club/screens/Cascade.dart';
import 'package:gondwana_club/screens/greennichetop.dart';
import 'package:gondwana_club/screens/iplay.dart';
import 'package:gondwana_club/screens/timberhills.dart';
import 'package:gondwana_club/screens/unwin.dart';

import '../global_style/style.dart';
import 'beach.dart';
import 'celsius.dart';

class venues_aminities extends StatefulWidget {
  const venues_aminities({ Key? key }) : super(key: key);

  @override
  State<venues_aminities> createState() => _venues_aminitiesState();
}

class _venues_aminitiesState extends State<venues_aminities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Venues'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: SingleChildScrollView(
       child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 15, 0),
              // The Beach
              child: Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => beachScreen()),
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
                                    image: AssetImage("assets/The-Beach.jpg"),
                                    fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                  ),
                                ),
                                child: Text('The Beach', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Timber Hills
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thScreen()),
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
                                image: AssetImage("assets/timberhills.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Timber Hills',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Unwind
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => unwindScreen()),
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
                                image: AssetImage("assets/unwind.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text("unwin'd", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //iPlay
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => iplayScreen()),
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
                                image: AssetImage("assets/iplay.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                          child: Text('iPlay', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Green Niche
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Screen()),
                    // );
                    
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
                                image: AssetImage("assets/GREEN-NICHE-1.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Green Niche', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Green Niche Top
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gntScreen()),
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
                                image: AssetImage("assets/green-niche-top.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Green Niche Top', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //CELSIUS
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => celScreen()),
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
                                image: AssetImage("assets/celcius.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Celsius', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Cascade
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cascadeScreen()),
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
                                image: AssetImage("assets/cascade.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Cascade', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              //Tree Top
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => iplayScreen()),
                    // );
                    
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
                                image: AssetImage("assets/treetopbar.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Treetops', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
                          width: 200,
                          height: 300,       
                        ),
                      ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}