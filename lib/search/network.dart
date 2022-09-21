import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/newaffilation.dart';
//import 'package:gondwana_club/model/Post.dart';

//import '../model/post.dart';

List<AffilationNew> parsePost(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  var Posts = list.map((model) => AffilationNew.fromJson(model)).toList();
  return Posts;
}

Future<List<AffilationNew>> fetchPost() async{
  final response = await http.get(Uri.parse('https://attendance.brillect.in/json/affilatednew.json'));
  if (response.statusCode == 200){
    return compute(parsePost, response.body);
  }else{
    throw Exception("Request API Error");
  }
}