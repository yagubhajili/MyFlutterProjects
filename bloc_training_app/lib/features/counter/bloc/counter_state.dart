part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int count;
  const CounterState(this.count);
}

// final class CounterInitial extends CounterState {
//   CounterInitial(super.count);
// }
