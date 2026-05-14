import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/home/data/model/food_model.dart';
import 'package:food_go/features/home/data/repos/food_repository.dart';
import 'package:food_go/features/home/presentation/cubits/cubit/food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final FoodRepository repository;
  FoodCubit(this.repository) : super(FoodInitial()) {
    fetchAllMenu();
  }

  void fetchAllMenu() async {
    emit(FoodLoading());
    try {
      final data = await repository.fetchAllFoods();

      emit(
        FoodLoaded(
          allData: data,
          selectedCategory: data.ourFoods,
          activeCategoryName: 'all',
        ),
      );
    } catch (e) {
      emit(FoodError(e.toString()));
    }
  }

  void changeCategory(String category) {
    if (state is FoodLoaded) {
      final currentState = state as FoodLoaded;
      List<Food> newList;

      switch (category) {
        case 'all':
          newList = currentState.allData.ourFoods;
          break;
        case 'pizzas':
          newList = currentState.allData.pizzas;
          break;
        case 'drinks':
          newList = currentState.allData.drinks;
          break;
        case 'desserts':
          newList = currentState.allData.desserts;
          break;
        case 'burgers':
          newList = currentState.allData.burgers;
          break;
        default:
          newList = currentState.allData.ourFoods;
      }

      emit(
        FoodLoaded(
          allData: currentState.allData,
          selectedCategory: newList,
          activeCategoryName: category,
        ),
      );
    }
  }
}
