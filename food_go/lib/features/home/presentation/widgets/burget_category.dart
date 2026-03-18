import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/constants/colors.dart';
import 'package:food_go/features/home/presentation/cubits/cubit/food_cubit.dart';
import 'package:food_go/features/home/presentation/cubits/cubit/food_state.dart';

class BurgerCategory extends StatelessWidget {
  final String categoryName;

  const BurgerCategory({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCubit, FoodState>(
      builder: (context, state) {
        // Check if this specific category is the active one
        bool isActive = false;
        if (state is FoodLoaded) {
          isActive = state.activeCategoryName == categoryName;
        }

        return GestureDetector(
          onTap: () {
            // This is the magic line that filters the grid!
            context.read<FoodCubit>().changeCategory(categoryName);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: isActive ? AppColors.primaryRed : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: isActive ? AppColors.primaryRed : Colors.grey.shade300,
              ),
            ),
            child: Center(
              child: Text(
                categoryName.toUpperCase(),
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
