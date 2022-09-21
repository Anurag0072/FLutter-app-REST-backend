import 'package:flutter/material.dart';

import '../global_style/style.dart';

class dining_aminities extends StatefulWidget {
  const dining_aminities({ Key? key }) : super(key: key);

  @override
  State<dining_aminities> createState() => _dining_aminitiesState();
}

class _dining_aminitiesState extends State<dining_aminities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dining'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: SingleChildScrollView(
       child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 15, 5),
              // Swimming
              child: Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {

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
                                    image: AssetImage("assets/ferns-club-bistro.jpg"),
                                    fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                  ),
                                ),
                                child: Text('Ferns', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              //Unwind
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
                                image: AssetImage("assets/unwind.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Unwind',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              //Varanda
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
                                image: AssetImage("assets/varanda2.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Varanda', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              //The Beach
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
                        
                          child: Text('The Beach', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              //Main Lounge
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
                                image: AssetImage("assets/main-lounge.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Main Lounge', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomLeft,
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
              //The Dhaba
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
                                image: AssetImage("assets/Dhaba.jpg"),
                                fit: BoxFit.fill,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('The Dhaba', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
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
              //Green Niche
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    
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
          // Padding(
          //     padding: const EdgeInsets.fromLTRB(25, 0, 15, 5),
          //     //Tree Top
          //     child:
          //     Container(
          //       height: 200,
          //       width: 300,
          //       child: GestureDetector(
          //         onTap: () {
          //
          //         },
          //         child: Card(
          //           shadowColor: Colors.amber,
          //           elevation: 2,
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(0), // if you need this
          //                 side: BorderSide(
          //                   color: Colors.grey.withOpacity(0.2),
          //
          //                   width: 1,
          //                 ),
          //               ),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                    image: DecorationImage(
          //                       image: AssetImage("assets/treetopbar.jpg"),
          //                       fit: BoxFit.fill,
          //                     alignment: Alignment.center,
          //                     ),
          //                   ),
          //
          //                   child: Text('Tree Tops', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25, color: Colors.white)),alignment:Alignment.bottomRight,
          //                 width: 200,
          //                 height: 300,
          //               ),
          //             ),
          //       ),
          //     )
          //   )
          ],
        ),
      ),
    );
  }
}