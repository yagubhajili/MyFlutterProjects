import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/theme/app_theme.dart';
import 'package:food_go/features/home/data/repos/food_repository.dart';
import 'package:food_go/features/home/presentation/cubits/cubit/food_cubit.dart';
import 'package:food_go/features/home/presentation/home_screen.dart';

class FoodGoApp extends StatelessWidget {
  // 1. Keep the repository instance here
  final burgerRepository = FoodRepository();

  FoodGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: burgerRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FoodCubit(burgerRepository)),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
