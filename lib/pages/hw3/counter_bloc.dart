import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/pages/hw3/count_event.dart';
import 'package:test_app/pages/hw3/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(CounterState(count: 0, history: List.empty(growable: true))) {
    on<IncrementCounterEvent>(_onIncrementCounter);
    on<DecrementCounterEvent>(_onDecrementCounter);
    on<ResetCounterEvent>(_onResetCounter);
    on<ResetHistoryEvent>(_onResetHistory);
  }

  void _onIncrementCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(
        count: state.count + 1, history: _getUpdatedHistory("Increment")));
  }

  void _onDecrementCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(
        count: state.count - 1, history: _getUpdatedHistory("Decrement")));
  }

  void _onResetCounter(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(CounterState(count: 0, history: _getUpdatedHistory("Reset count")));
  }

  void _onResetHistory(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(
        CounterState(count: state.count, history: List.empty(growable: true)));
  }

  List<String> _getUpdatedHistory(String newEvent) {
    final List<String> history = List.from(state.history);
    history.add(newEvent);
    return history;
  }
}
