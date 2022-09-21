import 'package:flutter/material.dart';

import '../global_style/style.dart';

class Imagesteam extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('steam room'),
          backgroundColor: AppStyle.appBarColor,
        ),
        body: Center(

          child: Column(
            children: <Widget>[
              Image.asset('assets/steam room.jpeg'),
              Text('Steam Room ')
            ],
          ),
        ),
      ),
    );
  }
}