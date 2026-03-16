import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/home/data/model/burger_model.dart';
import 'package:food_go/features/home/data/repos/burger_repository.dart';

part 'burger_state.dart';

class BurgerCubit extends Cubit<BurgerState> {
  final BurgerRepository repository;

  BurgerCubit(this.repository) : super(BurgerLoading());

  void getBurgers() async {
    try {
      final burgers = await repository.fetchBurgers();
      emit(BurgerLoaded(burgers));
    } catch (e) {
      emit(BurgerError(e.toString()));
    }
  }
}
