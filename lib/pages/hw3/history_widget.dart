import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_state.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<CounterBloc, CounterState>(
            buildWhen: (oldState, newState) =>
                oldState.history.length != newState.history.length,
            builder: ((counterBlock, state) =>
                Text("History: ${state.history.join(", ")}")))
      ],
    );
  }
}
