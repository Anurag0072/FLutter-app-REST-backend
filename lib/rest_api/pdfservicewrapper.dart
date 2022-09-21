import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class servicewrapper {
//https://attendance.brillect.in/razor/orderapi.php
  static var baseurl = "https://members.gondwanaclub.com/";
  static var sourcefolder = "GondwanaPaymentPdf's/";
  static var sourcename = "Member_Number" + "-" + "Year" + "-" + "Month" + ".pdf";

  servicewrapper(String memberNumber, int year, int month);
  //static var apifolder = "razor/";
  //static var mediafolder = "media/";
  //static var securitycode = "123";

  call_order_api( MemberNumber, int year, int month) async {

    dynamic jsonresponse = "[]";
    //var url = baseurl + mainfolder+ subfolder + apifolder +"orderapi.php";
    var url = baseurl+sourcefolder+sourcename;
    final body = {'MemberNumber': MemberNumber, 'year': year, 'month': month};

    //without header
    final response = await http.post(Uri.parse(url), body: body);

    print("get response done" + response.body.toString());
    try {
      jsonresponse = json.decode(response.body.toString());
    } catch (error) {
      print("get-category error" + error.toString());
    }
    return jsonresponse;
  }
}