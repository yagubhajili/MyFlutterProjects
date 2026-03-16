import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/theme/app_theme.dart';
import 'package:food_go/features/home/data/repos/burger_repository.dart';
import 'package:food_go/features/home/presentation/cubits/cubit/burger_cubit.dart';
import 'package:food_go/features/home/presentation/home_screen.dart';

class FoodGoApp extends StatelessWidget {
  // 1. Keep the repository instance here
  final burgerRepository = BurgerRepository();

  FoodGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: burgerRepository,
      child: MultiBlocProvider(
        providers: [
          // 2. Provide the Cubit and trigger the API call immediately
          BlocProvider(
            create: (context) => BurgerCubit(burgerRepository)..getBurgers(),
          ),
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
