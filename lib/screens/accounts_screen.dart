import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/pdf_fetch/newfetch.dart';
import 'package:gondwana_club/pdfviewnew/home_screen.dart';
import 'package:gondwana_club/screens/fetchdata.dart';
import 'package:gondwana_club/screens/finalpdffetch.dart';
import 'package:gondwana_club/screens/paymentidbi.dart';
import 'package:gondwana_club/screens/pdfdio.dart';
//import 'package:gondwana_club/screens/newfinalpdf.dart';
import 'package:gondwana_club/screens/razorpay_view.dart';
import 'package:gondwana_club/screens/search.dart';
import 'package:gondwana_club/screens/transaction_Records.dart';
import 'package:gondwana_club/screens/transection_test.dart';
//import 'package:gondwana_club/screens/payment_checkout_screen.dart';
import 'package:gondwana_club/widget/buttons.dart';
import 'package:gondwana_club/widget/large_button.dart';
import 'package:gondwana_club/widget/text_size.dart';
import 'package:gondwana_club/widgets/buttons.dart';
import 'package:gondwana_club/widgets/large_button.dart';
import 'package:gondwana_club/widgets/text_size.dart';

import '../pdf_fetch/pdffetch.dart';
import '../razorpay/razor.dart';

class AccountsScreen extends StatefulWidget {
  @override
  AccountsScreenState createState() => AccountsScreenState();
}

class AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 15, 5),
              // Billing Statement
              child: Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                           //builder: (context) =>HomeScreenpdf()));
                            builder: (context) =>MyApppdf()));
                  },
                  child: Card(
                        shadowColor: Colors.amber,
                        elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40), // if you need this
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2), 
                                width: 1,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/payment.gif"),
                                    fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                  ),
                                ),
                                child: Text('Billing Statement', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),alignment:Alignment.bottomCenter,
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
              //Online Payment
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                     Navigator.push(
                        context,
                         MaterialPageRoute(
                            builder: (context) =>razor()));

                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shadowColor: Colors.amber,
                    
                    elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            
                            width: 1,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                             image: DecorationImage(
                                image: AssetImage("assets/terminaloutline.gif"),
                                fit: BoxFit.contain,
                              alignment: Alignment.center,
                              ),
                            ),
                            child: Text('Online Payment',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),alignment:Alignment.bottomCenter,
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
              //Transaction History
              child: 
              Container(
                height: 200,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>transactiontest()));
                    
                  },
                  child: Card(
                    shadowColor: Colors.amber,
                    elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            
                            width: 1,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                             image: DecorationImage(
                                image: AssetImage("assets/invoice-outline.gif"),
                                fit: BoxFit.contain,
                              alignment: Alignment.center,
                              ),
                            ),
                        
                            child: Text('Transaction History', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),alignment:Alignment.bottomCenter,
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
