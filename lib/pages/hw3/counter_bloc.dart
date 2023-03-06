import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/pages/hw3/count_event.dart';
import 'package:test_app/pages/hw3/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(CounterState(count: 0, history: List.empty(growable: true))) {
    on<CounterEvent>(mapEventToState);
  }

  void mapEventToState(
      CounterEvent event, Emitter<CounterState> emitter) async {
    if (event is IncrementCounterEvent) {
      emitter(CounterState(
          count: state.count + 1, history: getUpdatedHistory("Increment")));
    }

    if (event is DecrementCounterEvent) {
      emitter(CounterState(
          count: state.count - 1, history: getUpdatedHistory("Decrement")));
    }

    if (event is ResetCounterEvent) {
      emitter(
          CounterState(count: 0, history: getUpdatedHistory("Reset count")));
    }

    if (event is ResetHistoryEvent) {
      emitter(CounterState(
          count: state.count, history: List.empty(growable: true)));
    }
  }

  List<String> getUpdatedHistory(String newEvent) {
    final List<String> history = List.from(state.history);
    history.add(newEvent);
    return history;
  }
}
