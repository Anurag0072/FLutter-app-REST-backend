import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/screens/accommodation_aminites.dart';
import 'package:gondwana_club/screens/dining_aminities.dart';
import 'package:gondwana_club/screens/leisure_aminities.dart';
import 'package:gondwana_club/screens/sports_aminities.dart';
import 'package:gondwana_club/screens/venues_aminities.dart';


class AminitiesScreen extends StatefulWidget {
  @override
  AminitiesScreenState createState() => AminitiesScreenState();
}

class AminitiesScreenState extends State<AminitiesScreen> {

  int _selected = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Club Aminities'),
        backgroundColor: AppStyle.appBarColor,
      ),
        body: ListView(
            controller: pageController,
                children: [
                    Container(
                    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
      child: Column(
      children: [
       //======**ForText**=====//

        Container(
        padding:  EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
      child: Text(
      'SPORTS',
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      ),
        SizedBox(height: 10),
        Container(
          child:Card(  
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const sports_amenities()),
                );
              },
              child: CarouselSlider(
                items: [
                  Image(image: AssetImage('assets/swimming.jpg')),
                  Image(image: AssetImage('assets/tennis.jpg')),
                  Image(image: AssetImage('assets/billiards.jpg')),
                  Image(image: AssetImage('assets/gym1.jpg')),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding:  EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
          child: Text(
            'DINING',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child:Card(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const dining_aminities()),
                );
              },
              child: CarouselSlider(
                items: [
                  Image(image: AssetImage('assets/ferns-club-bistro.jpg')),
                  Image(image: AssetImage('assets/unwind.jpg')),
                  Image(image: AssetImage('assets/varanda.jpg')),
                  Image(image: AssetImage('assets/varanda.jpg')),
                  Image(image: AssetImage('assets/The-Beach.jpg'))
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding:  EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
          child: Text(
            'VENUES',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child:Card(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const venues_aminities()),
                );
              },
              child: CarouselSlider(
                items: [
                  Image(image: AssetImage('assets/clubfront.jpg')),
                  Image(image: AssetImage('assets/varanda2.jpg')),
                  Image(image: AssetImage('assets/treetopbar.jpg')),
                  Image(image: AssetImage('assets/meetingroom.jpg')),
                  Image(image: AssetImage('assets/amphitheater.jpg')),
                  Image(image: AssetImage('assets/ferns.jpg')),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ),

        Container(
          padding:  EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
          child: Text(
            'LEISURE',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child:Card(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const leisure_aminities()),
                );
              },
              child: CarouselSlider(
                items: [
                  //Image(image: AssetImage('assets/spa_gc.jpg')),
                  Image(image: AssetImage('assets/libraries.jpg')),
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ),

        Container(
          padding:  EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
          child: Text(
            'ACCOMMODATION',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child:Card(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const accomodation_aminites()),
                );
              },
              child: CarouselSlider(
                items: [
                  Image(image: AssetImage('assets/atithiInn.png')),
                  Image(image: AssetImage('assets/hotel-adi-nagpur.jpg')),
                  Image(image: AssetImage('assets/hotellb.jpg'))
                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
      ),
      )
      ),
      ),
                ]

      ),
          );
    }
}
