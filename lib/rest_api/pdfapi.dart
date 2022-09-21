import 'dart:convert';

import '../global_style/global_variables.dart';
import '../model/forget.dart';
import '../model/member_search_param.dart';
import 'package:http/http.dart' as http;

//Future<Forget>
void pdfMethod(String MemberNumber, year, month) async {
  print("pdfMethod");

  print("in forgetMethod MemberNumber = "+MemberNumber);


  final response = await http.post(
    Uri.parse("https://members.gondwanaclub.com/GondwanaPaymentPdf's"),

    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },

    body: jsonEncode(<String, String>{
      'MemberNumber': MemberNumber,
      'year' : year,
      'month': month,
    }),
  );

  print('response.statusCode = '+response.statusCode.toString());
  print('response.body = '+response.body);

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print('response.body = '+response.body);
    // return Forget.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create MemberSearchParam.');
  }
}
//final uri = Uri.parse(url);
//  final response = await http.get(uri);
//  final pdfFile = response.bodyBytes;
//  final t = await getTemporaryDirectory();
//  final path = "${t.path}/$fileName";
//  File(path).writeAsBytesSync(pdfFile);
//  Share.shareFiles([path]);