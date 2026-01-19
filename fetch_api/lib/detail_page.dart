import 'package:fetch_api/Response.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final ProductItem product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(widget.product.thumbnail),
            SizedBox(height: 20),
            Text(widget.product.title),
            SizedBox(height: 20),

            Text("\$${widget.product.price}"),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.product.description),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.product.isStarred = !widget.product.isStarred;
                      });
                    },

                    child: Icon(
                      Icons.star,
                      color: widget.product.isStarred
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
            ),
          ],
        ),
      ),
    );
  }
}
