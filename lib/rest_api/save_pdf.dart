import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

//void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test Image',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Test Image'),
//     );
//   }
// }

class MyHome extends StatefulWidget {
  MyHome({Key ?key}) : super(key: key);
  //final String title;
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  get uri => null;

  @override
  initState() {
    _downloadAndSavePhoto();
    super.initState();
  }

  _downloadAndSavePhoto() async {
    // Get file from internet
    var url = uri.parse('https://132.148.80.97:770/C:/SiteData/Gondwana_LIVE'); //%%%
    var response = await get(url); //%%%
    // documentDirectory is the unique device path to the area you'll be saving in
    var documentDirectory = await getApplicationDocumentsDirectory();
    var firstPath = documentDirectory.path + "/"; //%%%
    //You'll have to manually create subdirectories
    await Directory(firstPath).create(recursive: true); //%%%
    // Name the file, create the file, and save in byte form.
    var filePathAndName = documentDirectory.path + 'GondwanaPaymentPdf';
    File file2 = new File(filePathAndName); //%%%
    file2.writeAsBytesSync(response.bodyBytes); //%%%
    setState(() {
      // When the data is available, display it
      imageData = filePathAndName;
      dataLoaded = true;
    });
  }

  late String imageData;
  bool dataLoaded = false;

  @override
  Widget build(BuildContext context) {
    if (dataLoaded) {
      return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // imageData holds the path AND the name of the picture.
              Image.file(File(imageData), width: 600.0, height: 290.0)
            ],
          ),
        ),
      );
    } else {
      return CircularProgressIndicator(
        backgroundColor: Colors.cyan,
        strokeWidth: 5,
      );
    }
  }
}