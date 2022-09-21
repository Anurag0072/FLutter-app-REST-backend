import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gondwana_club/food_ui//Screens/details/widget/food_detail.dart';
import 'package:gondwana_club/food_ui//Screens/details/widget/food_image.dart';
import 'package:gondwana_club/food_ui//constants/colors.dart';

import 'package:gondwana_club/food_ui//models/food.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/screens/home_screen.dart';

//import '../../../screens/home_screen.dart';
//import 'package:gondwana_club/food_ui//widgets/custom_app_bar.dart';

//import '../../../global_style/style.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Club Search"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: AppStyle.appBarColor),
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [

              FoodImg(
                food: food,
              ),
              FoodDetail(
                food: food,
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 56,
        ));
  }
}
