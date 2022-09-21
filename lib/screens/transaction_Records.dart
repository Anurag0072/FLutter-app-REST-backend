import 'dart:async';
import 'dart:convert';
import 'package:gondwana_club/screens/transection_test.dart';
import 'transection_test.dart';
import '../global_style/global_variables.dart';
import 'package:get_storage/get_storage.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('$ROOT/api/MemberApp/GetTransactionRecords'));
//
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
//
// class Album {
//   final String ReferenceNo;
//   final String Amount;
//   final String TransactionDate;
//   final String TransactionStatus;
//   final String TransactionId;
//   final String ReceiptNo;
//   final bool Status;
//   final String TransactionDescription;
//
//   const Album({
//     required this.ReferenceNo,
//     required this.Amount,
//     required this.TransactionDate,
//     required this.TransactionStatus,
//     required this.TransactionId,
//     required this.ReceiptNo,
//     required this.Status,
//     required this.TransactionDescription
//
//
//   });
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       ReferenceNo: json['ReferenceNo'],
//       Amount: json['Amount'],
//       TransactionDate: json['TransactionDate'],
//       TransactionStatus: json['TransactionStatus'],
//       TransactionId: json['TransactionId'],
//       ReceiptNo: json['ReceiptNo'],
//       Status: json['Status'],
//       TransactionDescription: json['TransactionDescription'],
//     );
//   }
// }

class MyRecords extends StatefulWidget {
  const MyRecords({Key? key}) : super(key: key);

  @override
  _MyRecordsState createState() => _MyRecordsState();
}

class _MyRecordsState extends State<MyRecords> {
  transactionapicall()
//final sessionUserData = GetStorage();
  {}
  @override
  void initState() {
    super.initState();
    //futureAlbum = fetchAlbum();
   // print('sessionUserData loginId = '+sessionUserData.read('loginId'));
  }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Fetch Data ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Fetch Data Example'),
          ),
          body: Center(
            child: FutureBuilder(
              future: transactionapicall(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Card(
                      margin: EdgeInsets.all(15.0),
                      color: Colors.white,
                      child: ListTile(
                        title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(transactionapicall().ReferenceNo)),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            transactionapicall().Amount,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        // onTap: () {
                        //   print(jsonEncode(products[index]));
                        //   Navigator.of(context).pushNamed(
                        //       ProductDetailScreen.routeName,
                        //       arguments: jsonEncode(products[index]));
                        // },
                      ));
                } else {
                  print('Something went wrong');
                  // By default, show a loading spinner.
                  return  CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      );
    }
  }
