import 'package:fetch_api/response.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<ProductItem> cartItems;
  const CartPage({super.key, required this.cartItems});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (context, index) {
          final product = widget.cartItems[index];
          return ListTile(
            leading: Image.network(product.thumbnail),
            title: Text(product.title),
            subtitle: Text("\$${product.price}"),
          );
        },
      ),
    );
  }
}
