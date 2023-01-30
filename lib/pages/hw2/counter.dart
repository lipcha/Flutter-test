import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final Widget child;

  const Counter({required this.child, super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterAction(
      counterState: this,
      count: count,
      child: widget.child,
    );
  }
}

class CounterAction extends InheritedWidget {
  final CounterState counterState;
  final int count;

  const CounterAction(
      {super.key,
      required this.counterState,
      required this.count,
      required super.child});

  static CounterAction of(BuildContext context) {
    final CounterAction? counterAction =
        context.dependOnInheritedWidgetOfExactType<CounterAction>();
    return counterAction!;
  }

  @override
  bool updateShouldNotify(covariant CounterAction oldWidget) {
    return oldWidget.count != counterState.count;
  }

  void increment() {
    counterState.increment();
  }

  void decrement() {
    counterState.decrement();
  }
}
