import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrement>((event, emit) {
      // TODO: implement event handler

      emit(CounterState(state.count + 1));
    });
    on<CounterDecrement>((event, emit) {
      // TODO: implement event handler

      emit(CounterState(state.count - 1));
    });
  }
}
