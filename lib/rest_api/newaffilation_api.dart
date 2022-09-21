import 'dart:convert';

import 'package:http/http.dart' as http;

import '../global_style/global_variables.dart';
import '../model/affilation.dart';
import '../model/newaffilation.dart';

Future<List<AffilationNew>> AffilationNewMethod() async {

  final response = await http.get(
      Uri.parse('https://attendance.brillect.in/json/affilatednew.json'));

  print('response = '+response.statusCode.toString());
  if (response.statusCode == 200) {

    print('response body = '+response.body);

    List jsonResponse = json.decode(response.body);
    print('jsonResponse = '+jsonResponse.toString());

    return jsonResponse.map((member) => AffilationNew.fromJson(member)).toList();

  } else {
    throw Exception('Failed to load jobs from API');
  }
}