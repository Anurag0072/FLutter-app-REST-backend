import 'package:flutter/material.dart';

import '../global_style/style.dart';

class Gondwana_events extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AMAZING APRIL'),
          backgroundColor: AppStyle.appBarColor,
        ),
        body: Center(

          child: Column(
            children: <Widget>[

              Image.asset('assets/Gondwana_april.jpg'),

              Text('Gondwana Club Presents AMAZING APRIL'
                  'VENUE Tree Top GONDWANA CLUB '
                  'FROM 9PM Onwards.', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Satuarday April 16th  DJ.Montz', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Tuesday April 19th Ravi Samarath Unplugged', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Satuarday April 23rd DJ.Pooja and DJ.Rohan', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Tuesday April 26th ', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Satuarday April 30th DJ.Vaggy', style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}