import 'package:flutter/material.dart';
import 'package:food_go/core/constants/colors.dart';
// import '../../../core/constants/colors.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: Offset(-1, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'assets/images/burgerImage1.png',

                      fit: BoxFit.contain,
                      // height: 150,
                      // scale: 0.2,
                    ),
                  ),
                ),
                SizedBox(height: 8),

                Text(
                  'Cheeseburger',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.deepCharcoal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                Text(
                  "Wendy's Burger",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                // Spacer(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    SizedBox(width: 4),
                    Text(
                      "4.9",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.favorite_border,
              color: AppColors.deepCharcoal,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
