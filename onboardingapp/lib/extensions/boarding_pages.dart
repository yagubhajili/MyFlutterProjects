import 'package:flutter/material.dart';

class BoardingPages extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  const BoardingPages({super.key, this.image, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 24),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('$image', width: 375),
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    // fontFamily: 'SF Pro Text',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  '$description',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF767E8C)),
                ),
                SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ],
    );
  }
}