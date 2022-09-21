import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gondwana_club/food_ui/Screens/home/home.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/screens/affilation_list.dart';
import 'package:gondwana_club/screens/help_desk_screen.dart';
import 'package:gondwana_club/screens/home_screen.dart';
import 'package:gondwana_club/screens/recent_events.dart';
import 'package:gondwana_club/screens/search.dart';
import 'package:gondwana_club/screens/visitorinvitation.dart';

//import 'food_ui/main.dart';

class AppBottomNav extends StatefulWidget {
  AppBottomNav({Key? key}) : super(key: key);

  @override
  _AppBottomNavState createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {
  int currentIndex = 0;
  var page = [
    HomeScreen(),
    ProductListScreen(),
    guestinvite(),
    HelpDeskScreen(),
  ];
  var _appPageController = PageController();

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
    _appPageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
  DateTime timeBackPressed = DateTime.now();


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    onWillPop: () async {
      final difference = DateTime.now().difference(timeBackPressed);
      final isExitWarning = difference >= Duration(seconds: 2);

      timeBackPressed = DateTime.now(); 
      
      if (isExitWarning) {
        final message = 'Press back again to exit';
        Fluttertoast.showToast (msg: message, fontSize: 18);
        return false;
      } else {
        Fluttertoast.cancel();
        return true;
      }
    };
    return Scaffold(
           
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: page,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: _appPageController,
      ),
      bottomNavigationBar: Container(
        width: size.width,
        height: 70,
        child: Stack(
          //overflow: Overflow.visible,
          children: [
            CustomPaint(
              
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                backgroundColor: AppStyle.appBarColor,
                child: Icon(Icons.event_sharp), // Analyze Button
                elevation: 5,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => viewapp()));
                },
              ),
            ),
            Container(

              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: currentIndex == 0
                          ? Color(0xff895842)
                          : Colors.grey.shade400,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                  
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.restaurant_menu,
                        color: currentIndex == 1
                            ? Color(0xff895842)
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                       // setBottomBarIndex(1);
                      }),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.person_add,
                        color: currentIndex == 2
                            ? Color(0xff895842)
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.help,
                        color: currentIndex == 3
                            ? Color(0xff895842)
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(3);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onTappedBar(int value) {
    setState(() {
      currentIndex = value;
    });
    _appPageController.jumpToPage(value);
  }
}

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   
  Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
  Path path = Path()..moveTo(0, 20);
  path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
  path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
  path.arcToPoint(Offset(size.width*0.60, 20),
    radius: Radius.circular(10.0),clockwise: false);
  path.quadraticBezierTo(size.width * 0.60, 0, size.width*0.65, 0);
  path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
  path.lineTo(size.width, size.height);
  path.lineTo(0, size.height);
  path.close();
  canvas.drawShadow(path, Colors.white, 5, true);
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
