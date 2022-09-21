import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/screens/AboutUs.dart';
import 'package:gondwana_club/screens/Gondwana_events.dart';
import 'package:gondwana_club/screens/ImageYoga.dart';
import 'package:gondwana_club/screens/Imageone.dart';
import 'package:gondwana_club/screens/Imagesteam.dart';
import 'package:gondwana_club/screens/affi.dart';
import 'package:gondwana_club/screens/affilation_list.dart';
import 'package:gondwana_club/screens/changepasswordscreen.dart';
import 'package:gondwana_club/screens/eventslist.dart';
import 'package:gondwana_club/screens/newaffilationdata.dart';
import 'package:gondwana_club/screens/profile_screen.dart';
import 'package:gondwana_club/screens/recentOffers.dart';
import 'package:gondwana_club/screens/recent_events.dart';
import 'package:gondwana_club/screens/search.dart';
import 'package:gondwana_club/screens/slider.dart';
import 'package:gondwana_club/screens/sliderevents.dart';
import 'package:gondwana_club/screens/visitorinvitation.dart';
import 'package:flutter/cupertino.dart';
import '../event/Screens/HomeScreen.dart';
import '../food/widgets/BestFoodWidget.dart';
import '../food/widgets/BottomNavBarWidget.dart';
import '../food/widgets/PopularFoodsWidget.dart';
import '../food/widgets/SearchWidget.dart';
import '../food/widgets/TopMenus.dart';
import '../global_style/style.dart';
import 'accounts_screen.dart';
import 'affiliatedsclub_screen.dart';
import 'aminities_screen.dart';
import 'bookings_screen.dart';
import 'login_screen.dart';
import 'member_directory_screen.dart';
import 'privacy_screen.dart';
import 'yourorder_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  // for upcoming events
  int _index1 = 0;

  PageController pageController = PageController();

  final sessionUserData = GetStorage();
  bool generated = false;
  var formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final subjectController = TextEditingController();
  var data = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('in home initState = ' + sessionUserData.read('loginId'));
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: Text('Home'
            // sessionUserData.read('MemberName'),style: TextStyle()
            ),
          backgroundColor: AppStyle.appBarColor,
          centerTitle: true,
          actions: <Widget>[]),
      

      // NAVIGATION DRAWER WITH HAMBURGER ICON //
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                color: AppStyle.appBarColor,
              ),
              child: Container(
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                      },
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: Container(
                        child: Text(sessionUserData.read('MemberName'),
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),

            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/accounting1.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Accounts'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountsScreen()));
              },
            ),

            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/guest.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Guest Invite'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => guestinvite()));
              },
            ),
            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 26,
                height: 26,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/affiliated.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Affiliated Clubs'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        //builder: (context) => ProductListScreen()));
                        builder: (context) => AffilationDirectoryScreen()));
              },
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.blueGrey.withOpacity(0.9),
              indent: 32,
              endIndent: 32,
            ),

            ListTile(
              title: Container(
                width: 32,
                height: 32,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/security.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Privacy'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyScreen()));
              },
            ),
            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/club.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Club Aminities'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AminitiesScreen()));
              },
            ),
            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/aboutus.jpg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('About Us'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileUI2()));
              },
            ),
            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/change.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Change  Password'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
              },
            ),
            Divider(
              height: 10,
              thickness: 0.8,
              color: Colors.blueGrey.withOpacity(0.5),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Container(
                width: 30,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/icon-logout.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Text('Logout'),
                    ),
                  ],
                ),
              ),
              onTap: () {
                sessionUserData.write('isLogged', false);
                sessionUserData.remove('loginId');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPageScreen()));
              },
            ),
          ],
        ),
      ),
      body: PageView(
        
        controller: pageController,
        children: [
          Container(
              
            //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                    children: [
                    /*====Carousel- Image slider========*/
                    SizedBox(height: 10),
                    Container(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height *0.30,
                        width: MediaQuery.of(context).size.width *0.98,
                        child: Carousel(
                          images: [
                            AssetImage('assets/clubfront.jpg'),
                            AssetImage('assets/varanda2.jpg'),
                            AssetImage('assets/treetopbar.jpg'),
                            AssetImage('assets/meetingroom.jpg'),
                            AssetImage('assets/amphitheater.jpg'),
                            AssetImage('assets/ferns.jpg'),
                          ],
                          autoplay: true,
                          dotSize: 5.0,
                          dotSpacing: 10.0,
                          dotColor: Colors.white10,
                          borderRadius: true,
                          animationDuration: Duration(milliseconds: 1000),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    // SizedBox(height: 20),
                    Divider(
                      height: 10,
                      thickness: 0.8,
                      color: Colors.blueGrey.withOpacity(0.5),
                      indent: 32,
                      endIndent: 32,
                    ),
                    // CARD VIEW FOR UPCOMING EVENTS //
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    Container(
                      padding: EdgeInsets.only(right: 200),
                      child: Text(
                        "Recent Events",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                          textAlign: TextAlign.left
                      ),
                    ),

                    //SizedBox(height: 20),
                      Container(
                        child: SizedBox(
                          //height: MediaQuery.of(context).size.height *0.30,
                          //width: MediaQuery.of(context).size.width *0.98,
                           height:  MediaQuery.of(context).size.height *0.20,
                           width: 9000,
                            //width: 900,
                          child: PageView.builder(
                            itemCount: 1,
                            controller: PageController(viewportFraction: 0.7),
                            onPageChanged: (int index) =>
                                setState(() => _index = index),
                            itemBuilder: (_, i) {
                              return Transform.scale(
                                scale: i == _index ? 1 : 0.9,
                                //SizedBox(height: 5),
                                child: Card(

                                  child: Container(


                                   //Aignment.topCenter,
                                    //SliderEventScreen(),
                                    child: GestureDetector(
                                      child: SliderEventScreen(),
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => viewapp()));
                                      },

                                    )



                                  ),
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              );
                            },
                          ),
                        ),
                      ),

                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    //SizedBox(height: 15),
                    Divider(
                      height: 10,
                      thickness: 0.8,
                      color: Colors.blueGrey.withOpacity(0.5),
                      indent: 32,
                      endIndent: 32,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                    Container(
                      padding: EdgeInsets.only(right: 200),
                      child: Text(
                        "Recent Offers",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    // CARD VIEW FOR RECENT OFFERS //
                    // SizedBox(height: 5),
                    Container(
                      child: SizedBox(
                        //height: MediaQuery.of(context).size.height *0.30,
                        //width: MediaQuery.of(context).size.width *0.98,
                        height:  MediaQuery.of(context).size.height *0.20,
                         width: 9000,
                        child: PageView.builder(
                          itemCount: 1,
                          controller: PageController(viewportFraction: 0.7),
                          onPageChanged: (int index) =>
                              setState(() => _index = index),
                          itemBuilder: (_, i) {
                            return Transform.scale(
                              scale: i == _index ? 1 : 0.9,
                              child: Card(
                                child: Container(
                                  alignment: Alignment.topCenter,
                                    child: GestureDetector(
                                      child: SliderImageScreen(),
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => viewoffers()));
                                      },

                                    )
                                  //child:SliderImageScreen(),
                                ),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
