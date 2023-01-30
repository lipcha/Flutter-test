import 'package:flutter/material.dart';
import 'package:test_app/pages/hw2/counter.dart';

import '../../resources/app_strings.dart';

class CounterInteractionWidget extends StatelessWidget {
  final Function(CounterAction) callback;
  final String text;

  const CounterInteractionWidget(
      {super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        callback.call(CounterAction.of(context));
      },
      child: Text(text),
    );
  }
}
