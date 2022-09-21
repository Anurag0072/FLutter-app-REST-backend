import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gondwana_club/food_ui//Screens/details/widget/food_quantity.dart';
import 'package:gondwana_club/food_ui//constants/colors.dart';
import 'package:gondwana_club/food_ui//models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food? food;
  FoodDetail({this.food});

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.all(25),
        color: kBackground,
        child: Column(
          children: [

            Text(
              food!.name!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              ],
            ),

            FoodQuantity(food: food),

            Row(
              children: [
                Text(
                  '',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ],
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'About',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              food!.about!,
              style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5),
            ),
            SizedBox(height: 20),
          ],
        ));
  }

  _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
