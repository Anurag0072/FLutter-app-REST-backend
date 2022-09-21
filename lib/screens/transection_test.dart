import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/model/transaction.dart';
import 'package:gondwana_club/screens/transaction_deteils_screen.dart';

import '../global_style/style.dart';
import '../rest_api/transaction_api.dart';

class transactiontest extends StatefulWidget {
  @override
  transactiontestState createState() => transactiontestState();
}

class transactiontestState extends State<transactiontest> {
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController memberIdController = TextEditingController();
  TextEditingController memberController = TextEditingController();

  Future<List<TransactionHistory>>? futureTransactionHistory;

  final sessionUserData = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    String memberNumber = sessionUserData.read('loginId');
    print('Member Num = '+memberNumber);

    futureTransactionHistory = transactionMethod(memberNumber);
    futureTransactionHistory!.then((value) => {
      print('length = '+value.length.toString()),
      //print('Status = '+value.first.Status),
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Transactions records'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body:  Container(
        child: FutureBuilder<List<TransactionHistory>>(
          future: futureTransactionHistory,
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
                          child:  ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(snapshot.data![index].ReferenceNo),
                            subtitle: Text(snapshot.data![index].Amount),
                            trailing: Text(snapshot.data![index].Status.toString()),
                            onTap: (){
                              String RNum = snapshot.data![index].ReferenceNo;
                              String amt = snapshot.data![index].Amount;
                              bool sts = snapshot.data![index].Status;
                              String dte = snapshot.data![index].TransactionDate;
                              String Id = snapshot.data![index].TransactionId;
                              String rec = snapshot.data![index].ReceiptNo;
                              String des = snapshot.data![index].TransactionDescription;

                              Get.off(transactionDetailScreen(ReferenceNum: RNum, amt: amt, sts: sts, dte: dte, Id: Id, rec: rec, des: des));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      )
    );
  }
  // void transactionapicall() {
  //   print('in _forgetApiCall');
  //   String MemberNumber  = memberIdController.text;
  //   print('in _forgetApiCall MemberNumber = '+MemberNumber);
  //   // futureForget =
  //   futureTransactionHistory = transactionMethod(MemberNumber);
  //   futureTransactionHistory!.then((value) => {
  //     print('length = '+value.length.toString()),
  //
  //     print('Status = '+value.first.Status),
  //
  //   });
  // }
}
