import 'package:flutter/material.dart';
import 'package:test_app/pages/routes.dart';

class HomeWork1Screen extends StatelessWidget {
  static const String screenA = "A";
  static const String screenB = "B";
  static const String screenC = "C";
  static const String screenD = "D";

  static const List<String> _screens = [screenA, screenB, screenC, screenD];

  final String _screen;

  const HomeWork1Screen(this._screen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_screen)),
      body: Column(
        children: _screens
            .map((screen) => ElevatedButton(
                onPressed: () => {
                      Navigator.of(context)
                          .pushNamed(Routes.homeWork1, arguments: screen)
                    },
                child: Text(screen)))
            .toList(),
      ),
    );
  }
}
