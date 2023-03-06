import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/pages/hw3/history_widget.dart';

import '../../resources/app_strings.dart';
import 'count_event.dart';
import 'counter_bloc.dart';
import 'counter_widget.dart';

class CounterScreenContent extends StatelessWidget {
  const CounterScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
                child: const Text(AppStrings.buttonIncrement),
                onPressed: () => {
                      BlocProvider.of<CounterBloc>(context)
                          .add(IncrementCounterEvent())
                    }),
            OutlinedButton(
                child: const Text(AppStrings.buttonDecrement),
                onPressed: () => {
                      BlocProvider.of<CounterBloc>(context)
                          .add(DecrementCounterEvent())
                    }),
            OutlinedButton(
                child: const Text(AppStrings.buttonResetCounter),
                onPressed: () => {
                      BlocProvider.of<CounterBloc>(context)
                          .add(ResetCounterEvent())
                    }),
            OutlinedButton(
                child: const Text(AppStrings.buttonResetHistory),
                onPressed: () => {
                      BlocProvider.of<CounterBloc>(context)
                          .add(ResetHistoryEvent())
                    })
          ]),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: const [CounterWidget()],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: const [HistoryWidget()],
                  ),
                )
              ],
            )
          ])
        ],
      ),
    );
  }
}
