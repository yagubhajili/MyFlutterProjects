import 'package:flutter/material.dart';
import 'package:food_go/core/constants/colors.dart';

class BurgerCategory extends StatelessWidget {
  const BurgerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.categoryGrey,
      ),
      child: Text('All'),
    );
  }
}
