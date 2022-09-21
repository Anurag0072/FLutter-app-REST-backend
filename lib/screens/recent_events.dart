import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

import '../global_style/style.dart';

class Spacecraft {
  final String id;
  final String name, imageUrl, propellant, destination;

  Spacecraft({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.propellant,
    required this.destination,
  });

  factory Spacecraft.fromJson(Map<String, dynamic> jsonData) {
    return Spacecraft(
      id: jsonData['id'],
      name: jsonData['name'],
      propellant: jsonData['propellant'],
      destination: jsonData['destination'],
      imageUrl: "http://attendance.brillect.in/phpsq/dashboard/imagesevents/"+jsonData['image_url'],
    );
  }
}

class CustomListView extends StatelessWidget {
  final List<Spacecraft> spacecrafts;

  CustomListView(this.spacecrafts);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: spacecrafts.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(spacecrafts[currentIndex], context);
      },
    );
  }

  Widget createViewItem(Spacecraft spacecraft, BuildContext context) {
    return ListTile(
        title: Card(
          elevation: 5.0,
          child:  Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(spacecraft.imageUrl),
                  padding: const EdgeInsets.only(bottom: 8.0),
                ),
                Column(children: <Widget>[
                  Padding(
                      child: Text(
                        spacecraft.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                  const Text(" | "),
                  Padding(
                      child: Text(
                        spacecraft.destination,
                        style: const TextStyle(fontStyle: FontStyle.italic,fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                ]),
              ],
            ),
          ),
        ),
        onTap: () {
          //We start by creating a Page Route.
          //A MaterialPageRoute is a modal route that replaces the entire
          //screen with a platform-adaptive transition.
          var route = MaterialPageRoute(
            builder: (BuildContext context) =>
                SecondScreen(value: spacecraft),
          );
          //A Navigator is a widget that manages a set of child widgets with
          //stack discipline.It allows us navigate pages.
          Navigator.of(context).push(route);
        });
  }
}

//Future is n object representing a delayed computation.
Future<List<Spacecraft>> downloadJSON() async {
  const jsonEndpoint =
      "http://attendance.brillect.in/phpsq/view.php";

  final response = await get(Uri.parse(jsonEndpoint));

  if (response.statusCode == 200) {
    List spacecrafts = json.decode(response.body);
    return spacecrafts
        .map((spacecraft) => Spacecraft.fromJson(spacecraft))
        .toList();
  } else {
    throw Exception('We were not able to successfully download the json data.');
  }
}

class SecondScreen extends StatefulWidget {
  final Spacecraft value;

  const SecondScreen({Key ?key, required this.value}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page'),backgroundColor: AppStyle.appBarColor),
      body:SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child:Container(
    width: 400,
    padding: EdgeInsets.fromLTRB(10,10,10,0),
    margin: const EdgeInsets.all(10),

    decoration: BoxDecoration(

    color:Colors.blueGrey[300],
    border: Border.all(color: Colors.black54),
    borderRadius: BorderRadius.circular(9)
    ),

          //Center(
          child: Column(
            children: <Widget>[
              const Padding(
                child:  Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Divider(
                thickness: 7,
              ),
              Padding(
                //`widget` is the current configuration. A State object's configuration
                //is the corresponding StatefulWidget instance.
                child: Image.network(widget.value.imageUrl),
                padding: const EdgeInsets.all(12.0),
              ),
              Divider(
                thickness: 7,
              ),
              Padding(
                child:  Text(
                  'NAME : ${widget.value.name}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              Divider(
                thickness: 7,
              ),
                // child:  Text(
                //   'Imagename: ${widget.value.imageUrl}',
                //   style: const TextStyle(fontWeight: FontWeight.bold),
                //   textAlign: TextAlign.left,
                // ),


              Padding(
                child:  Text(
                  'Date : ${widget.value.destination}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              Divider(
                thickness: 7,
              ),
              Padding(
                child: Text(
                  'Description : ${widget.value.propellant}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: const EdgeInsets.all(20.0),
              )
            ],   ),),
        ),
      ),
    );
  }
}

class viewapp extends StatelessWidget {
  const viewapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       // primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Gondwana Events'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: AppStyle.appBarColor,),
        body: Center(
          //FutureBuilder is a widget that builds itself based on the latest snapshot
          // of interaction with a Future.
          child: FutureBuilder<List<Spacecraft>>(
            future: downloadJSON(),
            //we pass a BuildContext and an AsyncSnapshot object which is an
            //Immutable representation of the most recent interaction with
            //an asynchronous computation.
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Spacecraft>? spacecrafts = snapshot.data;
                return CustomListView(spacecrafts!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              //return  a circular progress indicator.
              return const CircularProgressIndicator();
            },
          ),

        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }
// //end
