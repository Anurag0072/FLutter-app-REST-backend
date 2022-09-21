import 'dart:typed_data';

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:gondwana_club/screens/pdfdio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart' as Path;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

//final imgUrl =
  //  "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf";
var dio = Dio();



class MyHomePagewalapdf extends StatefulWidget {
  MyHomePagewalapdf({Key? key}) : super(key: key);

  //final String title;

  @override
  _MyHomePagewalapdfState createState() => _MyHomePagewalapdfState();
}

class _MyHomePagewalapdfState extends State<MyHomePagewalapdf> {
  int _counter = 0;
  TextEditingController yearController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController MNController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future download2(Dio dio, String url, String savePath) async {
    try {
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      print(response.headers);
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (e) {
      print(e);
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),

            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
              child: TextFormField(
                //obscureText: true,
                keyboardType: TextInputType.text,
                controller: MNController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'year',
                  hintText: 'Enter year',
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact number';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
              child: TextFormField(
                //obscureText: true,
                keyboardType: TextInputType.text,
                controller: yearController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'year',
                  hintText: 'Enter year',
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact number';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 4),
              child: TextFormField(
                //obscureText: true,
                keyboardType: TextInputType.text,
                controller: monthController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm month',
                  hintText: 'Enter month',
                ),


              ),
            ),
            ElevatedButton(
                onPressed: () async {
//                   String MemberNumber  = MNController.text;
//                   String year = yearController.text;
//                   String month = monthController.text;
//                   print('$MemberNumber-$year-$month');
//                   var imgUrl = "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf";
//                   print(imgUrl);
//                   PDF().cachedFromUrl(
//                   imgUrl,
//                     maxAgeCacheObject:Duration(days: 30), //duration of cache
//                     placeholder: (progress) => Center(child: Text('$progress %')),
//                     errorWidget: (error) => Center(child: Text(error.toString())),
//                   );
//                   //OpenFile.open(imgUrl);
//                   PDFDocument doc = await PDFDocument.fromURL('https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/$MemberNumber-$year-$month.pdf');
//                  // var imgUrl = "https://members.gondwanaclub.com/GondwanaPaymentPdf%27s/A07-2016-09.pdf";
//                   var tempDir = await getTemporaryDirectory();
//                   //Directory appDocDir = await getApplicationDocumentsDirectory();
//                   //String appDocPath = appDocDir.path+"/bill.pdf";
//                   final ByteData imageData = await NetworkAssetBundle(Uri.parse(imgUrl)).load("");
//                   final Uint8List bytes = imageData.buffer.asUint8List();
// // display it with the Image.memory widget
//                   Image.memory(bytes);
//                   String fullPath = tempDir.path + "/bill.pdf'";
//                   //String fullPath = Path.join('Download/','/bill.pdf');
//                   print('full path ${fullPath}');
//
//                   download2(dio, imgUrl, fullPath);
//                   SfPdfViewer.network(
//                       imgUrl);Navigator.push(
     //context;
   //MaterialPageRoute(builder: (context) => MyApppdf(MemberNumber, year, month));
//   );
                },
                // key: Icon(
                //   Icons.file_download,
                //   color: Colors.white,
                // ),
                //color: Colors.green,
                //textColor: Colors.white,
                //label: Text('Dowload Invoice'),
              child: null,),
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
              // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}