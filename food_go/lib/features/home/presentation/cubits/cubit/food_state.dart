import 'package:food_go/features/home/data/model/food_model.dart';

abstract class FoodState {}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final Foodmodel allData;
  final List<Bbq> selectedCategory; 
  final String activeCategoryName;

  FoodLoaded({
    required this.allData,
    required this.selectedCategory,
    this.activeCategoryName = 'all',
  });
}

class FoodError extends FoodState {
  final String message;
  FoodError(this.message);
}
