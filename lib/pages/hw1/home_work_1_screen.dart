import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/routes.dart';

class HomeWork1Screen extends StatelessWidget {
  static const List<String> _screens = [
    Routes.screenA,
    Routes.screenB,
    Routes.screenC,
    Routes.screenD
  ];

  final String _screen;

  const HomeWork1Screen(this._screen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_screen)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _screens
              .map((screen) => ElevatedButton(
                  onPressed: () => onItemClick(context, screen),
                  child: Text(screen)))
              .toList(),
        ),
      ),
    );
  }

  void onItemClick(BuildContext context, String screenName) {
    Navigator.of(context).pushNamedAndRemoveUntil(screenName, (route) {
      bool value = route.settings.name == screenName && !route.isCurrent;
      print(
          "value = $value route is current = ${route.isCurrent}, name = ${route.settings.name}");

      return value;
    });
  }
}
