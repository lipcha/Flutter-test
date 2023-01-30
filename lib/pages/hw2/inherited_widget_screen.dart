import 'package:flutter/material.dart';
import 'package:test_app/pages/hw2/counter.dart';
import 'package:test_app/pages/hw2/counter_interaction_widget.dart';
import 'package:test_app/resources/app_strings.dart';

import 'counter_widget.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text(AppStrings.titleInheritanceWidgetExample)),
      body: Counter(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                CounterInteractionWidget(
                    text: AppStrings.buttonIncrement,
                    callback: (a) => a.increment()),
                CounterInteractionWidget(
                    text: AppStrings.buttonDecrement,
                    callback: (a) => a.decrement())
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // i am somewhere deep )
                              const CounterWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
