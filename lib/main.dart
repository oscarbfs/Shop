import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/pages/products_overview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.cyan,
        fontFamily: 'Lato'
      ),
      home: ProdctsOverviemPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
