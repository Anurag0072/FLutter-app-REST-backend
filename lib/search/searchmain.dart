import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global_style/style.dart';
//import '../model/post.dart';
import '../model/newaffilation.dart';
import '../screens/Affilationdetail.dart';
import 'network.dart';

class Searchpage extends StatefulWidget{
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage>{

  List<AffilationNew> _posts = <AffilationNew>[];
  List<AffilationNew> _postDisplay = <AffilationNew>[];

  bool _isLoading = true;



  @override
  void initState(){
    //
    fetchPost().then((value){
      setState((){
        _isLoading = false;
      _posts.addAll(value);
      _postDisplay = _posts;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Club Search"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppStyle.appBarColor),
      body: ListView.builder(
        itemBuilder: (context, index){
          if (!_isLoading){
            return index ==0 ? _searchBar() : _listItem(index -1);
          }else{
            return Center(child: CircularProgressIndicator(),);
          }

        },
        itemCount: _postDisplay.length + 1,

      ),

    );
  }

  _searchBar(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(hintText: 'Search.....'),
        onChanged: (text){
          text = text.toLowerCase();
          setState((){
            _postDisplay = _posts.where((post) {
              var postTitle = post.cityname.toLowerCase();
              return postTitle.contains(text);
            }).toList();
          });
        }
      ),
    );

  }
  _listItem(index){
    return Card(child:
    ListTile(
      leading: const Icon(Icons.person),
      title: Text(_postDisplay[index].cityname),
      subtitle: Text(_postDisplay[index].clubname),
      //trailing: Text(snapshot.data![index].City),
      onTap: (){
        String clubnum = _postDisplay[index].clubname;
        String cityname = _postDisplay[index].cityname;
        String Address = _postDisplay[index].Address;
        String contactno = _postDisplay[index].contactno;
        String Mail = _postDisplay[index].Mail;
        String website = _postDisplay[index].website;
        Get.off(AffilationDetailScreen(clubnum: clubnum, cityname: cityname, Address: Address, contactno: contactno, Mail: Mail, website: website ));
      },
    ),




    );




  }
}