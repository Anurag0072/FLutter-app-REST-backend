import 'dart:convert';
import 'dart:io';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:http/http.dart' as http;

class servicewrapper {
  static var baseurl = "http://132.148.80.97:770/";
  static var source_folder = "C:\SiteData\Gondwana_LIVE\GondwanaPaymentPdf's";
  static var source_file_name = 'Member_Number' + "-" + 'bill.Year' + "-" +
      'bill.Month' + ".pdf";


  call_order_api(String MemberNumber, year, month) async {
    dynamic jsonresponse = "[]";
    var url = baseurl + source_folder + source_file_name;

    final body = {'MemberNumber': MemberNumber, 'year': year, 'month':month};

    final response = await http.post(Uri.parse(url),body: body);

    print("get response done" + response.body.toString());
    try {
      jsonresponse = json.decode(response.body.toString());

    }catch (error) {
      print("get-category error" + error.toString());
    }
    return jsonresponse;

  }
}