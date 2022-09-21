import 'dart:convert';

import 'package:gondwana_club/model/transaction.dart';
import 'package:http/http.dart' as http;

import '../global_style/global_variables.dart';

Future<List<TransactionHistory>> transactionMethod(String MemberNumber) async {
  print("transactionMethod");
  print("transactionMethod = $MemberNumber");

  //print("in transactionMethod MemberNumber = " +);


  final response = await http.post(
    Uri.parse('$ROOT/api/MemberApp/GetTransactionRecords'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'MemberNumber':MemberNumber,
    }),
  );

  print('response.statusCode = ' + response.statusCode.toString());
  print('response.body = ' + response.body);

  if (response.statusCode == 200) {


    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print('response.body = ' + response.body);
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((transaction) => TransactionHistory.fromJson(transaction)).toList();
    //return TransactionHistory.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create MemberSearchParam.');
  }
}
