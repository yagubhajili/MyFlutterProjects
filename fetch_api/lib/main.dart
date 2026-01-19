// import 'package:dio/dio.dart';
import 'package:fetch_api/Response.dart';
import 'package:fetch_api/cart_page.dart';
// import 'package:fetch_api/detail_page.dart';
import 'package:fetch_api/main_page.dart';
import 'package:fetch_api/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApiApp());
}

class MyApiApp extends StatefulWidget {
  const MyApiApp({super.key});

  @override
  State<MyApiApp> createState() => _MyApiAppState();
}

class _MyApiAppState extends State<MyApiApp> {
  List<ProductItem> cartItems = [];

  void addToCart(ProductItem product) {
    setState(() {
      cartItems.add(product);
      // log( ${product.id});
    });
  }

  // bool isStarred = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surfaceTint: Colors.transparent,
        ),
      ),
      home: MainPage(cartItems: cartItems, addToCart: addToCart),
      routes: {
        '/profile': (context) => ProfilePage(),
        '/cart': (context) => CartPage(cartItems: []),
      },
    );
  }
}
