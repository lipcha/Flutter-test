import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/pages/hw3/counter_bloc.dart';
import 'package:test_app/pages/hw3/counter_state.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // good solution
    return BlocSelector<CounterBloc, CounterState, int>(
        selector: (state) => state.count,
        builder: ((counterBlock, count) => Text("Count = $count")));

    // not so good solution
    return BlocBuilder<CounterBloc, CounterState>(
        buildWhen: (oldState, newState) => oldState.count != newState.count,
        builder: ((counterBlock, state) => Text("Count = ${state.count}")));
  }
}
