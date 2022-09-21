import 'package:flutter/material.dart';

import '../global_style/style.dart';

class ImageYoga extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('yoga'),
          backgroundColor: AppStyle.appBarColor,
        ),
        body: Center(

          child: Column(
            children: <Widget>[
              Image.asset('assets/Yoga session.jpeg'),
              Text('Yoga ')
            ],
          ),
        ),
      ),
    );
  }
}