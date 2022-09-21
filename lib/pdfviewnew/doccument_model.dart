import 'package:flutter/cupertino.dart';

class Document {
  String doc_title;
  String doc_url;
  String doc_date;
  int page_num;

  Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  TextEditingController yearController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController MNController = TextEditingController();
  //Creating list to get document.




  static List<Document> doc_list = [
    
    Document(
      "Bill1",
      "http://attendance.brillect.in/phpsq/pdf/bill1.pdf",
      "18-03-2020",
       5,
    ),
    Document(
      "Bill2",
      "http://attendance.brillect.in/phpsq/pdf/bill2.pdf",
      "18-03-2020",
       3,
    ),
    Document(
      "Bill3",
      "http://attendance.brillect.in/phpsq/pdf/bill3.pdf",
      "18-03-2020",
       1,
    ),
    Document(
      "Bill4",
      "http://attendance.brillect.in/phpsq/pdf/bill4.pdf",
      "18-03-2020",
      2,
    ),
    Document(
      "Bill5",
      "http://attendance.brillect.in/phpsq/pdf/bill5.pdf",
      "18-03-2020",
      4,
    ),
    Document(
      "Bill6",
      "http://attendance.brillect.in/phpsq/pdf/bill6.pdf",
      "18-03-2020",
      6,
    ),
    Document(
      "Bill7",
      "http://attendance.brillect.in/phpsq/pdf/bill7.pdf",
      "18-03-2020",
      5,
    ),
    Document(
      "Bill8",
      "http://attendance.brillect.in/phpsq/pdf/bill8.pdf",
      "18-03-2020",
      6,
    ),
    Document(
      "Bill9",
      "http://attendance.brillect.in/phpsq/pdf/bill9.pdf",
      "18-03-2020",
      7,
    ),


  ];
}