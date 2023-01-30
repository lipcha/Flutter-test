import 'package:flutter/material.dart';
import 'package:test_app/pages/hw2/counter.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, func});

  @override
  Widget build(BuildContext context) {
    final count = CounterAction.of(context).counterState.count;
    return Text(count.toString());
  }
}
