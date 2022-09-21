import 'package:flutter/material.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:gondwana_club/model/transaction.dart';
import 'package:gondwana_club/screens/accounts_screen.dart';
import 'package:gondwana_club/screens/transection_test.dart';
import '../model/member.dart';
import '../rest_api/member_details_api.dart';
import '../rest_api/transaction_api.dart';

class transactionDetailScreen extends StatefulWidget {

  String ReferenceNum;
  String amt;
  bool sts;
  String dte;
  String Id;
  String rec;
  String des;

  transactionDetailScreen({required this.ReferenceNum,required this.amt, required this.sts, required this.dte, required this.Id, required this.rec, required this.des});

  @override
  transactionDetailState createState() => transactionDetailState();
}

class transactionDetailState extends State<transactionDetailScreen> {

  Future<List<TransactionHistory>>? futureTransaction;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('in Member Detail initState');
    futureTransaction = transactionMethod(widget.ReferenceNum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppStyle.appBarColor),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountsScreen())),
          ),
          title: Text('Transaction Details',style: TextStyle(color: AppStyle.appBarColor)),
          backgroundColor: Colors.transparent
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
        child:FutureBuilder<List<TransactionHistory>>(
            future: futureTransaction ,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return Column(
                    children: [

                      Container(
                        // child:CircleAvatar(
                        //   radius: 70,
                        //   child: ClipOval(
                        //     child:Icon(Icons.person, size: 100),
                        //   ),
                        // ),
                      ),
                      SizedBox(height: 20),

                      Container(
                        width: 400,
                        padding: EdgeInsets.fromLTRB(18, 15, 20, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                        ),
                        child: Column(
                            children: [
                              Container(
                                child: Text('ReceiptNo: ${widget.rec}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                              ),
                              SizedBox(height: 7),

                              Container(
                                child:  Text('Reference No : ${widget.ReferenceNum}',style: TextStyle(fontSize: 20)),
                              ),
                              SizedBox(height: 7),
                              Container(
                                child:  Text('Amount: ${widget.amt
                                }',style: TextStyle(fontSize: 20)),
                              ),
                              SizedBox(height: 7),
                              Container(
                               child:  Text('Status: ${widget.sts}',style: TextStyle(fontSize: 20)),
                              ),

                              SizedBox(height: 7),
                              Container(
                                //child:  Text('TransactionDescription: ${widget.des}',style: TextStyle(fontSize: 20)),
                              ),
                              Container(
                                child:  Text('Id :${widget.Id}',style: TextStyle(fontSize: 20)),
                              ),

                              SizedBox(height: 7),

                              SizedBox(height: 8),
                              Container(
                                child:  Divider(
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 8, 0, 10),
                                child:  Text('Details',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                              ),
                              Divider(),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 8, 0, 10),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(Icons.calendar_today),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            child: Text('${widget.dte}'),
                                          ),

                                        ],
                                      ),
                                    ),

                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(Icons.library_books_rounded),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            child: Text('${widget.des}'),
                                          ),

                                        ],
                                      ),
                                    ),],),
                              ),
                            ]),

                      )]);
              }
              else{
                print('Something went wrong');
                return CircularProgressIndicator();
              }
            }
        ),
      ),
    );

  }



  }
