import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fetch_api/Response.dart';
import 'package:fetch_api/detail_page.dart';
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
  @override
  void initState() {
    super.initState();

    getProducts();
  }

  List<ProductItem> gettedProducts = [];
  // bool isStarred = false;

  Future<void> getProducts() async {
    try {
      final dio = Dio();
      final result = await dio.get("https://dummyjson.com/products");

      gettedProducts = ResponseEntity.fromJson(result.data).products;

      setState(() {});
    } catch (e) {
      debugPrint("API ERROR: $e");
    }
  }

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Program'),

          backgroundColor: Colors.white,
        ),
        body: gettedProducts.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                // itemExtent: 420,
                // scrollDirection: Axis.horizontal,
                itemCount: gettedProducts.length,
                itemBuilder: (context, index) {
                  final product = gettedProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(product: product),
                        ),
                      );
                    },
                    child: Container(
                      // height: 300,
                      // width: 300,
                      // height: MediaQuery.of(context).size.height * 0.5,
                      // width: MediaQuery.of(context).size.width * 0.6,
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(
                              255,
                              0,
                              0,
                              0,
                            ).withValues(alpha: 0.5),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(product.thumbnail),
                          Text(product.title),
                          SizedBox(height: 10),
                          Text('\$${product.price.toString()}'),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    product.isStarred = !product.isStarred;
                                  });
                                },
                                child: Icon(
                                  Icons.star,
                                  color: product.isStarred
                                      ? Colors.amber
                                      : Colors.grey,
                                  size: 32,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'Add To Cart',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
