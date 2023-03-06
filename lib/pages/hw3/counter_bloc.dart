import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/pages/hw3/count_event.dart';
import 'package:test_app/pages/hw3/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(CounterState(count: 0, history: List.empty(growable: true))) {
    on<IncrementCounterEvent>(onIncrementCounter);
    on<DecrementCounterEvent>(onDecrementCounter);
    on<ResetCounterEvent>(onResetCounter);
    on<ResetHistoryEvent>(onResetHistory);
  }

  void onIncrementCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(
        count: state.count + 1, history: getUpdatedHistory("Increment")));
  }

  void onDecrementCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(
        count: state.count - 1, history: getUpdatedHistory("Decrement")));
  }

  void onResetCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(count: 0, history: getUpdatedHistory("Reset count")));
  }

  void onResetHistory(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(
        CounterState(count: state.count, history: List.empty(growable: true)));
  }

  List<String> getUpdatedHistory(String newEvent) {
    final List<String> history = List.from(state.history);
    history.add(newEvent);
    return history;
  }
}
