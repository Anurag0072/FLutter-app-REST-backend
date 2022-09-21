import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/model/product.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static const String routeName = '/product-detail';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  var productName = "";
  Product? product;

  @override
  void initState() {
    super.initState();
    //print(product!.noofafilation.toString());
  }

  @override
  void didChangeDependencies() {
    var productString = ModalRoute.of(context)?.settings.arguments as String;
    print('page 2');
    print(productString);

    var productJson = jsonDecode(productString);
    print(productJson);

    setState(() {
      product = Product.fromJson(productJson);
      productName = product!.cityname;
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text("City Name : " + (product!.cityname),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text(
                      "No of Affilation : " +
                          (product!.noofaffilation.toString()),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0))),
              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text("Club Name : " + (product!.clubname.toString()),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0))),
              SizedBox(
                height: 25,
              ),
              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text("Location: " + (product!.location.toString()),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0))),
              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text("Contact No: " + (product!.Contactno.toString()),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0))),
            ],
          ),
        ),
      ),
    );
  }
}
