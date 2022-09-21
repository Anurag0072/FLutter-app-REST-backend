import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class servicewrapper {
//https://attendance.brillect.in/razor/orderapi.php
  static var baseurl = "https://attendance.brillect.in/razor/rat.php";
  static var mainfolder = " ";
  static var subfolder = "";
  static var apifolder = "razor/";
  static var mediafolder = "media/";
  static var securitycode = "123";

  call_order_api( String txnid, String amount, String description) async {

    dynamic jsonresponse = "[]";
    //var url = baseurl + mainfolder+ subfolder + apifolder +"orderapi.php";
    var url = baseurl;
    final body = {'securecode': securitycode, 'txnid': txnid, 'amount': amount, 'description': description};

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