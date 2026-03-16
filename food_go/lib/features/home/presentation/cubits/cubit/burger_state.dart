part of 'burger_cubit.dart';

@immutable
sealed class BurgerState {
 
}

// final class BurgerInitial extends BurgerState {}

class BurgerLoading extends BurgerState {}

class BurgerLoaded extends BurgerState {
  final List<BurgerModel> burgers;

  BurgerLoaded(this.burgers);
}

class BurgerError extends BurgerState {
  final String message;
  BurgerError(this.message);
}
