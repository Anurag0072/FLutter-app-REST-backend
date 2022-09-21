import 'package:flutter/material.dart';

import '../global_style/style.dart';

class Imageone extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gym room'),
          backgroundColor: AppStyle.appBarColor,
        ),
        body: Center(

          child: Column(
            children: <Widget>[
              Image.asset('assets/Gym room.jpeg'),
              Text('Gym room ')
            ],
          ),
        ),
      ),
    );
  }
}