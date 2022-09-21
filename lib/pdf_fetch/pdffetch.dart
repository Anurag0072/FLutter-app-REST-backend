import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/model/transaction.dart';
import 'package:gondwana_club/pdf_fetch/servicewrapper.dart';
import 'package:gondwana_club/screens/transaction_deteils_screen.dart';

import '../global_style/style.dart';
import '../rest_api/transaction_api.dart';
import 'modelOrder.dart';

class pdffetch extends StatefulWidget {
  @override
  pdffetchState createState() => pdffetchState();
}

class pdffetchState extends State<pdffetch> {
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController membernoController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController monthController = TextEditingController();

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
                          // Card(
                          //   elevation: 1,
                          //   child:  ListTile(
                          //     leading: const Icon(Icons.person),
                          //     title: Text(snapshot.data![index].ReferenceNo),
                          //     subtitle: Text(snapshot.data![index].Amount),
                          //     trailing: Text(snapshot.data![index].Status.toString()),
                          //     onTap: (){
                          //       String RNum = snapshot.data![index].ReferenceNo;
                          //       String amt = snapshot.data![index].Amount;
                          //       bool sts = snapshot.data![index].Status;
                          //       String dte = snapshot.data![index].TransactionDate;
                          //       String Id = snapshot.data![index].TransactionId;
                          //       String rec = snapshot.data![index].ReceiptNo;
                          //       String des = snapshot.data![index].TransactionDescription;
                          //
                          //       Get.off(transactionDetailScreen(ReferenceNum: RNum, amt: amt, sts: sts, dte: dte, Id: Id, rec: rec, des: des));
                          //     },
                          //   ),
                          // )
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child:
                            //TextField(
                            //   controller: membernoController,
                            //   decoration: InputDecoration(
                            //       hintText: "Memberno", icon: Icon(Icons.person)),
                            // ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter a search term',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              controller: yearController,
                              decoration: InputDecoration(
                                  hintText: "Year", icon: Icon(Icons.timelapse_rounded)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              controller: monthController,
                              decoration: InputDecoration(
                                  hintText: "month", icon: Icon(Icons.timeline)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextButton(
                              onPressed: () {
                               // int amount = int.parse(controller.text) * 100;
                                _getorderId();
                              },
                              child: Text(
                                "Start searching",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: TextButton.styleFrom(backgroundColor: Colors.blue),
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
_getorderId() async {
  print(" call start here");
  servicewrapper wrapper = new servicewrapper();
  Map<String, dynamic> response = await wrapper.call_order_api('MemberNumber','year', 'month');
  final model = ModelOrderId.fromJson(response);
  print(" response here");
  if (model != null) {
    if (model.MemberNumber == 1) {
      //res_length = model.information.length.toString();
      //print("order id is -" + model.Information.toString());
      ///_startPayment(model.Information.toString(), amount);
    } else {
      print("status Zero");
    }
  } else {
    print("model null for category api");
  }
}

