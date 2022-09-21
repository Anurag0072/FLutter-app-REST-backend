import 'dart:convert';

import '../global_style/global_variables.dart';
import '../model/login.dart';
import '../model/member.dart';
import '../model/member_search_param.dart';
import 'package:http/http.dart' as http;

import '../model/newaffilation.dart';

Future<AffilationNew> affilationDetailMethod(String cityname) async {
  print("memberDetailMethod");

  print("in memberDetailMethod MemberNum = "+cityname);

  final response = await http.post(
    Uri.parse('https://attendance.brillect.in/json/affilatednew.json'),

    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },

    body: jsonEncode(<String, String>{
      'cityname': cityname,
    }),
  );

  print('response.statusCode = '+response.statusCode.toString());
  print('response.body = '+response.body);

  if (response.statusCode == 200) {

    print('response.body = '+response.body);
    return AffilationNew.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create MemberSearchParam.');
  }
}