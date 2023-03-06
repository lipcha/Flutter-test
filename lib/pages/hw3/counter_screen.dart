import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/resources/app_strings.dart';

import 'counter_bloc.dart';
import 'counter_screen_content.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.titleBlockExample)),
      body: BlocProvider(
          create: (_) => CounterBloc(), child: const CounterScreenContent()),
    );
  }
}
