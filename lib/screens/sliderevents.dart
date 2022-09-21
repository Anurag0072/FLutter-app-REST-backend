import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SliderEventScreen extends StatefulWidget {
  @override
  _SliderEventState createState() => _SliderEventState();
}

class _SliderEventState extends State<SliderEventScreen>{
  String imageFolder = "https://attendance.brillect.in/phpsq/dashboard/imagesevents/";
  List ?imageList;
  bool loading = true;
  fetchAllImage() async {
    final response = await http.get(Uri.parse("https://attendance.brillect.in/phpsq/dashboard/sliderevents.php"));
    if (response.statusCode ==200){
      setState((){
        imageList = jsonDecode(response.body);
        loading = false;
      });
    }
    print(imageList);
  }

  @override
  void initState(){
    //
    super.initState();
    fetchAllImage();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(title: Text("Slider Dynamic"),),
      body: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child:loading?CircularProgressIndicator(): Carousel(
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          dotIncreasedColor: Color(0xff895842),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.topRight,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          borderRadius: true,
          images: imageList?.map((element){
            return Image.network(imageFolder+element['image_url']);
          }).toList(),
        ),
      ),
    );
  }

}