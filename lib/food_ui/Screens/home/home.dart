import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gondwana_club/food_ui//Screens/home/widget/food_list.dart';
import 'package:gondwana_club/food_ui//Screens/home/widget/food_list_view.dart';
import 'package:gondwana_club/food_ui//Screens/home/widget/restaurant_info.dart';
import 'package:gondwana_club/food_ui//constants/colors.dart';
import 'package:gondwana_club/food_ui//models/restaurant.dart';
import 'package:gondwana_club/food_ui//widgets/custom_app_bar.dart';
import 'package:gondwana_club/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../global_style/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'),
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppStyle.appBarColor,),

     // backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //CustomAppBar(
          //   IconButton(
          //     icon: FaIcon(FontAwesomeIcons.arrowLeft),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => HomeScreen()));
          //     },
          //   ),


           // rightIcon: Icons.search,
        //  ),
          RestaurantInfo(),
          FoodList(
            selected: selected,
            restaurant: restaurant,
            callback: (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
          ),
          Expanded(
              child: FoodListView(
            selected: selected,
            callback: (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController: pageController,
            restaurant: restaurant,
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: kPrimaryColor,
                    padding: 2,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   elevation: 2,
      //   backgroundColor: kPrimaryColor,
      // ),
    );
  }
}
