import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/model/product.dart';

import 'dart:convert';

import 'package:gondwana_club/screens/affilation_details.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  static const String routeName = '/product-list';

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> products = [];

  Future<void> readJsonFile() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final productData = await json.decode(response);

    var list = productData["items"] as List<dynamic>;

    setState(() {
      products = list.map((e) => Product.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Affilation List"),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            // child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         primary: AppStyle.appBarColor,
            //         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            //         textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            //     onPressed: readJsonFile,
            //     child: Text("Load affilation")),
          ),
          if (products.length > 0)
             Expanded(
      child:ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, index) {
                  final Product = products[index];
                  return Card(
                      margin: EdgeInsets.all(15.0),
                      color: Colors.white,
                      child: ListTile(
                        title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(products[index].cityname)),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            products[index].country.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () {
                          print(jsonEncode(products[index]));
                          Navigator.of(context).pushNamed(
                              ProductDetailScreen.routeName,
                              arguments: jsonEncode(products[index]));
                        },
                      ));
                },
              ),
            //)
          //else
          // Container(
          //  child: Text("No products"),
           )
        ]),
      ),
    );
  }
}
