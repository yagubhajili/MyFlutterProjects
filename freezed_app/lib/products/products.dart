import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_app/features/product_model.dart';
import 'package:freezed_app/features/product_remote_data_source.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late final Future<List<ProductModel>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = ProductRemoteDataSource(Dio()).fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: FutureBuilder<List<ProductModel>>(
        future: _productsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: Image.network(
                  product.thumbnail,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
                title: Text(product.title),
                subtitle: Text(product.description, maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: Text('\$${product.price.toStringAsFixed(2)}'),
              );
            },
          );
        },
      ),
    );
  }
}
